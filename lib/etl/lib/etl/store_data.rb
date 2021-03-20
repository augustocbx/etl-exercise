class StoreData
  extend LightService::Action
  expects :data_array
  expects :active_record_class

  executed do |ctx|
    qty = 0
    ctx.data_array.each do |data|
      stored_data = ctx.active_record_class.find_by_id(data[:id])
      if stored_data.nil?
        qty += 1
        ctx.active_record_class.create(data)
      end
    end
    ctx.fail!
    ctx.succeed! "Was created #{qty} new record(s)"
  end
end