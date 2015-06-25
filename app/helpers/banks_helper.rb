module BanksHelper
  def dates_range
    (1.week.ago.to_i..DateTime.now.to_i).step(1.day).map{|t| Time.at(t).strftime('%d.%m.%Y') }
  end
end
