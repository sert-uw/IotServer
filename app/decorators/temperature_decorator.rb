class TemperatureDecorator < Draper::Decorator
  delegate_all

  def updated_at
    model.updated_at.strftime('%Y年%m月%d日 %H時%M分%S秒')
  end
end
