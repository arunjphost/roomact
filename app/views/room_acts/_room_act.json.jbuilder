json.extract! room_act, :id, :Name, :Amount, :Desc, :Time, :created_at, :updated_at
json.url room_act_url(room_act, format: :json)