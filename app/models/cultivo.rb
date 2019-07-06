class Cultivo < ApplicationRecord
  belongs_to :tipo_cultivo
  belongs_to :tipo_suelo
end
