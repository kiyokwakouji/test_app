class Task < ApplicationRecord
    validates :text,presence: true
    # validates:<検証したいデータ><検証したい処理>
end
        