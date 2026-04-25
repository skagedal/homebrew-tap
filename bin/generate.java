///usr/bin/env jbang "$0" "$@" ; exit $?
//DEPS info.picocli:picocli:4.7.6

import java.nio.file.Files;
import java.nio.file.Path;
import java.util.Map;
import java.util.concurrent.Callable;

import picocli.CommandLine;
import picocli.CommandLine.Command;
import picocli.CommandLine.Option;

@Command(name = "generate", mixinStandardHelpOptions = true,
         description = "Render an szulu cask from the template.")
public class generate implements Callable<Integer> {

    @Option(names = "--template", required = true,
            description = "Path to the cask template file.")
    Path template;

    @Option(names = "--output", required = true,
            description = "Path to write the generated cask.")
    Path output;

    @Option(names = "--major", required = true,
            description = "Java major version (e.g. 24).")
    String major;

    @Option(names = "--java-version", required = true,
            description = "Full Java version (e.g. 24.0.2).")
    String javaVersion;

    @Option(names = "--distro-version", required = true,
            description = "Zulu distro version (e.g. 24.32.13).")
    String distroVersion;

    @Option(names = "--sha256-arm", required = true,
            description = "SHA-256 of the aarch64 dmg.")
    String sha256Arm;

    @Option(names = "--sha256-intel", required = true,
            description = "SHA-256 of the x64 dmg.")
    String sha256Intel;

    @Override
    public Integer call() throws Exception {
        Map<String, String> values = Map.of(
            "{{MAJOR}}", major,
            "{{JAVA_VERSION}}", javaVersion,
            "{{DISTRO_VERSION}}", distroVersion,
            "{{SHA256_ARM}}", sha256Arm,
            "{{SHA256_INTEL}}", sha256Intel
        );

        String content = Files.readString(template);
        for (Map.Entry<String, String> e : values.entrySet()) {
            content = content.replace(e.getKey(), e.getValue());
        }

        Files.writeString(output, content);
        System.out.println("Wrote " + output);
        return 0;
    }

    public static void main(String[] args) {
        System.exit(new CommandLine(new generate()).execute(args));
    }
}
