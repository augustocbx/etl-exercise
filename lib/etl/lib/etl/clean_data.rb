class CleanData
  extend LightService::Action
  expects :data_array
  expects :fields
  promises :data_array

  executed do |ctx|
    ctx.data_array = ctx.data_array.map do |data|
      data.slice(*ctx.fields)
    end
  end
end