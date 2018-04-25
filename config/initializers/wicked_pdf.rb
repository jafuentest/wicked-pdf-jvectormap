# WickedPDF Global Configuration
#
# Use this to set up shared configuration options for your entire application.
# Any of the configuration options shown here can also be applied to single
# models by passing arguments to the `render :pdf` call.
#
# To learn more, check out the README:
#
# https://github.com/mileszs/wicked_pdf/blob/master/README.md

WickedPdf.config = {
  # Path to the wkhtmltopdf executable: This usually isn't needed if using
  # one of the wkhtmltopdf-binary family of gems.
  # exe_path: '/usr/local/bin/wkhtmltopdf',
  #   or
  # exe_path: Gem.bin_path('wkhtmltopdf-binary', 'wkhtmltopdf')
  exe_path: Gem.bin_path('wkhtmltopdf-binary-edge', 'wkhtmltopdf')

  # Layout file to be used for all PDFs
  # (but can be overridden in `render :pdf` calls)
  # layout: 'pdf.html',
}

config_pdf = {
  page_size: "Legal",
  margin: {
    bottom: 0,
    top: 0,
    left: 0,
    right: 0
  },
  javascript_delay: 3000,
  encoding: "UTF-8",
}

Rails.application.config.middleware.use WickedPdf::Middleware, config_pdf, only: '/site/show.pdf'
