module OpenMensa
  module Resources
  	module APIv2
      def self.headers(status, head = {})
        css_class = (status == 204 || status == 404) ? 'headers no-response' : 'headers'
        lines = ["Status: #{STATUSES[status]}"]
        head.each do |key, value|
          lines << "#{key}: #{value}"
        end
        %(<pre class="#{css_class}"><code>#{lines * "\n"}</code></pre>\n)
      end

      def self.sidebar_identifier
        'sidebar_v2'
      end

      MEAL = {
        "id" => 260,
        "name" => "Gemüse-Couscouspfanne mit Joghurt-Ingwer-Dip, dazu bunter Blattsalat",
        "notes" => [
          "ovo-lacto-vegetabil",
          "mensaVital"
        ],
        "prices" => {
          "student" => 2.30,
          "employee" => 3.65,
          "other" => 4.60
        },
        "date" => "2012-05-29T00:00:00Z",
        "category" => "Alternativ-Angebot"
      }

      CANTEEN = {
        "id" => 1,
        "name" => "Mensa Ernst-Abbe-Platz",
        "address" => "Ernst-Abbe-Platz 8, 07743 Jena, Germany",
        "latitude" => 50.9287296813292,
        "longitude" =>  11.5825831890106
      }

      FAV = {
        "id" => 55,
        "canteen_id" => 1,
        "sort_value" => 4
      }
    end
  end
end