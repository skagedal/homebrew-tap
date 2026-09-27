class KivraSync < Formula
  include Language::Python::Virtualenv

  desc "Download receipts and letters from Kivra"
  homepage "https://github.com/felixandersen/kivra-sync"
  url "https://github.com/felixandersen/kivra-sync/archive/refs/tags/v1.1.2.tar.gz"
  sha256 "a68c1689257abd9eb75a05343694e49afba5de92eacacc80808d4e064d1f98ae"
  license "MIT"

  depends_on "cffi" => :no_linkage
  depends_on "pango"
  depends_on "pillow"
  depends_on "python@3.14"

  uses_from_macos "libffi"

  pypi_packages package_name:     "",
                extra_packages:   %w[qrcode==8.2 requests==2.32.4 weasyprint==66.0],
                exclude_packages: %w[cffi pillow]

  resource "brotli" do
    url "https://files.pythonhosted.org/packages/f7/16/c92ca344d646e71a43b8bb353f0a6490d7f6e06210f8554c8f874e454285/brotli-1.2.0.tar.gz"
    sha256 "e310f77e41941c13340a95976fe66a8a95b01e783d430eeaf7a2f87e0a57dd0a"
  end

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/a3/c2/24167ea9858356b47a87a50d39908bfdb72ceeefe0041586e704e5376b3a/certifi-2026.7.22.tar.gz"
    sha256 "741e2c3b351ddf169a738da9f2c048608ff7f2c5cc02f1ebc6b118bb090d5d55"
  end

  resource "charset-normalizer" do
    url "https://files.pythonhosted.org/packages/e5/3f/143b048436775b0f76ac3eec145c019e8173ccc2885c8f20319b996d5e83/charset_normalizer-3.5.1.tar.gz"
    sha256 "6117b84ea48435e5356dc737f5121485c30920ba43375fa7b434fd753df0eac3"
  end

  resource "cssselect2" do
    url "https://files.pythonhosted.org/packages/06/00/2456b6b664c7a770989cbe3c352aac4eb962c938486f03a2e1255ae963c6/cssselect2-0.10.1.tar.gz"
    sha256 "83b0d820ef589dabaf693289b647c2f5b410f76d285f56deba911ffa75a7b9d1"
  end

  resource "fonttools" do
    url "https://files.pythonhosted.org/packages/a2/24/86f9930b930b97fc82266083320f3c34643ef67261c32651e893db525aca/fonttools-4.66.0.tar.gz"
    sha256 "ef0610dfe7bb5bf574d9bdad6f597403ebc9807d124ac6f148d7604b2609be98"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/f5/08/8eea9d4b8302028f3abb2c0813953f7aec26d33b7a8960ed760e65ff29fa/idna-3.20.tar.gz"
    sha256 "a7db850025b95ded1eae8a46181a1a6c56c92c96f0e2b005d9ff8dc0210cab44"
  end

  resource "pydyf" do
    url "https://files.pythonhosted.org/packages/36/ee/fb410c5c854b6a081a49077912a9765aeffd8e07cbb0663cfda310b01fb4/pydyf-0.12.1.tar.gz"
    sha256 "fbd7e759541ac725c29c506612003de393249b94310ea78ae44cb1d04b220095"
  end

  resource "pyphen" do
    url "https://files.pythonhosted.org/packages/94/47/8430452269cd28863d73b903d07d329d058cf762527ff211b3864ba61fc7/pyphen-0.18.1.tar.gz"
    sha256 "dbae6fbbe4f01cb206108b43573d857c67107be9d0e38eb1b08d6fa2210634a7"
  end

  resource "qrcode" do
    url "https://files.pythonhosted.org/packages/8f/b2/7fc2931bfae0af02d5f53b174e9cf701adbb35f39d69c2af63d4a39f81a9/qrcode-8.2.tar.gz"
    sha256 "35c3f2a4172b33136ab9f6b3ef1c00260dd2f66f858f24d88418a015f446506c"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/e1/0a/929373653770d8a0d7ea76c37de6e41f11eb07559b103b1c02cafb3f7cf8/requests-2.32.4.tar.gz"
    sha256 "27d0316682c8a29834d3264820024b62a36942083d52caf2f14c0591336d3422"
  end

  resource "tinycss2" do
    url "https://files.pythonhosted.org/packages/a3/ae/2ca4913e5c0f09781d75482874c3a95db9105462a92ddd303c7d285d3df2/tinycss2-1.5.1.tar.gz"
    sha256 "d339d2b616ba90ccce58da8495a78f46e55d4d25f9fd71dfd526f07e7d53f957"
  end

  resource "tinyhtml5" do
    url "https://files.pythonhosted.org/packages/b1/1f/cfe2f6b30557c92b3f31d41707e09cef5c1efbd87392bc6c0430c46b0e4d/tinyhtml5-2.1.0.tar.gz"
    sha256 "60a50ec3d938a37e491efa01af895853060943dcebb5627de5b10d188b338a67"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/e3/05/b17359e1cefb4f909b5e40b1b90a496d987258916dbbf88e842c729f510e/urllib3-2.8.0.tar.gz"
    sha256 "63bf2ead4c879426ebf22ef2a781eeb4aa3b4ae798a0435506f8687fd5bb9b63"
  end

  resource "weasyprint" do
    url "https://files.pythonhosted.org/packages/32/99/480b5430b7eb0916e7d5df1bee7d9508b28b48fee28da894d0a050e0e930/weasyprint-66.0.tar.gz"
    sha256 "da71dc87dc129ac9cffdc65e5477e90365ab9dbae45c744014ec1d06303dde40"
  end

  resource "webencodings" do
    url "https://files.pythonhosted.org/packages/d5/a0/8fd707bcb776a7be556bad06a2ea5fb9bd519df78ef8e26f70ccf0f38bff/webencodings-0.6.1.tar.gz"
    sha256 "565f9ad031c702dae404e27a099e3e09186a3ab1b9520f06d215502b651fd910"
  end

  resource "zopfli" do
    url "https://files.pythonhosted.org/packages/74/21/3b6af43a663b22b00e738bb0642931a2579e15da6852613d56c6aa535d28/zopfli-0.4.3.tar.gz"
    sha256 "d3a50f91a13cea9bafe025de8fd87a005eb26de02a4f0c193127ddbf23ac8ebe"
  end

  def install
    # Upstream logs WeasyPrint errors to ./weasyprint.log in whatever directory it runs from
    inreplace "utils/pdf.py", "logging.FileHandler('./weasyprint.log')", "logging.NullHandler()"

    venv = virtualenv_create(libexec, "python3.14")
    venv.pip_install resources

    (libexec/"app").install "kivra_sync.py", "__version__.py", "VERSION",
                            "kivra", "storage", "interaction", "utils"
    (bin/"kivra-sync").write <<~SH
      #!/bin/bash
      exec "#{opt_libexec}/bin/python" "#{opt_libexec}/app/kivra_sync.py" "$@"
    SH
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kivra-sync --version")

    system libexec/"bin/python", "-c", <<~PY
      import sys
      sys.path.insert(0, "#{libexec}/app")
      from utils.pdf import html_to_pdf
      assert html_to_pdf("<p>hej</p>").startswith(b"%PDF")
    PY
  end
end
