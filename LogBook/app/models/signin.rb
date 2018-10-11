class Signin < ApplicationRecord
    def self.search(search)
        if search
            where(["created_at LIKE ?", "%#{search}%"])
          else
              Signin.where(created_at: Time.zone.now.beginning_of_day..Time.zone.now.end_of_day)
            end
end

def Signin.to_csv(options = {})
desired_columns = ["name", "company", "purpose"]
  CSV.generate(options) do |csv|
    csv << desired_columns
    all.each do |signin|
      csv << signin.attributes.values_at(*desired_columns)
    end
  end
end

end
