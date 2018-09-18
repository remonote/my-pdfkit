PDFKit.configure do |config|
  if Rails.env.development?
    config.wkhtmltopdf = '/usr/local/rvm/gems/ruby-2.4.0/bin/wkhtmltopdf'
  end
  #config.wkhtmltopdf = `which wkhtmltopdf`.to_s.strip
  config.default_options = {
    encoding:                "UTF-8",  # エンコーディング
    page_size:               "A4",     # ページのサイズ
    margin_top:              "0.25in", # 余白の設定
    margin_right:            "1in",
    margin_bottom:           "0.25in",
    margin_left:             "1in",
    disable_smart_shrinking: false
  }
end