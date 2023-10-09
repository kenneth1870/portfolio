class HomeController < ApplicationController
  def download_pdf
    send_file(
      "#{Rails.root.join('public/Kenneth-2023.pdf')}",
      filename: 'Kenneth-2023.pdf',
      type: 'application/pdf'
    )
  end
end
