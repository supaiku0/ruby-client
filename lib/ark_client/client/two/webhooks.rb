module ArkClient
  class Client
    module Two
      module Webhooks
        class << self
          def list(parameters = {})
            get("webhooks", parameters)
          end

          def create(parameters)
            post("webhooks", parameters)
          end

          def get(id)
            get("webhooks/#{id}")
          end

          def update(id, parameters)
            put("webhooks/#{id}", parameters)
          end

          def delete(id)
            delete("webhooks/#{id}")
          end
        end
      end
    end
  end
end