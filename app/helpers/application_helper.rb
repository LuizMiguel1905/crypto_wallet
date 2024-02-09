module ApplicationHelper
  def locale(language)
    I18n.locale == :en ? "Estados unidos" : "Português do Brasil"
    end
  def rails_ambient_ptbr
    if Rails.env.development?
      "Desenvolvimento"
    elsif Rails.env.production?
      "Produção"
    else
      "Teste"
    end
  end
end
