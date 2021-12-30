module ApplicationHelper
    def
        locale(locale)
        I18n.locale == :en ? "Estados Unidos" : "Português do Brasil zil zil"
    end

    def data_br(data_us)
        data_us.strftime("%d/%m/%Y")
    end

    def nome_aplicacao
        "Crypto Wallet APP"
    end

    def ambiente_rails 
        if Rails.env.development?
            "Desenvolvimento"
        elsif Rails.env.production?
            "Produção"
        else
            "Teste"
        end
    end
end
