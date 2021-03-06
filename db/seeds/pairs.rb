Pair.delete_all

# data = File.read("#{Rails.root}/lib/data/forex.json")
# json = JSON.parse(data)
#
# Pair.bulk_insert do |worker|
#   json["results"]["markets"].each do |market|
#     pair = market["underlyingName"]
#
#     worker.add(
#       base: pair[0..2],
#       quote: pair[4..6],
#       ig_epic: market["epic"],
#       mini: market["name"].include?("Mini")
#     )
#   end
# end

Pair.create!([
  {base: "GBP", quote: "USD", mini: true, ig_epic: "CS.D.GBPUSD.MINI.IP"},
  {base: "EUR", quote: "USD", mini: true, ig_epic: "CS.D.EURUSD.MINI.IP"},
  {base: "USD", quote: "JPY", mini: true, ig_epic: "CS.D.USDJPY.MINI.IP"},
  {base: "AUD", quote: "USD", mini: true, ig_epic: "CS.D.AUDUSD.MINI.IP"},
  {base: "EUR", quote: "GBP", mini: true, ig_epic: "CS.D.EURGBP.MINI.IP"},
  {base: "XAU", quote: "USD", mini: false, ig_epic: "CS.D.CFAGOLD.CFA.IP"},
  {base: "USD", quote: "CAD", mini: true, ig_epic: "CS.D.USDCAD.MINI.IP"},
  {base: "GBP", quote: "JPY", mini: true, ig_epic: "CS.D.GBPJPY.MINI.IP"},
  {base: "GBP", quote: "EUR", mini: true, ig_epic: "CS.D.GBPEUR.MINI.IP"},
  {base: "EUR", quote: "JPY", mini: true, ig_epic: "CS.D.EURJPY.MINI.IP"},
  {base: "NZD", quote: "USD", mini: true, ig_epic: "CS.D.NZDUSD.MINI.IP"},
  {base: "GBP", quote: "AUD", mini: true, ig_epic: "CS.D.GBPAUD.MINI.IP"},
  {base: "EUR", quote: "AUD", mini: true, ig_epic: "CS.D.EURAUD.MINI.IP"},
  {base: "AUD", quote: "JPY", mini: true, ig_epic: "CS.D.AUDJPY.MINI.IP"},
  {base: "XAG", quote: "USD", mini: false, ig_epic: "CS.D.CFASILVER.CFA.IP"},
  {base: "GBP", quote: "NZD", mini: true, ig_epic: "CS.D.GBPNZD.MINI.IP"},
  {base: "GBP", quote: "CAD", mini: true, ig_epic: "CS.D.GBPCAD.MINI.IP"},
  {base: "EUR", quote: "CAD", mini: true, ig_epic: "CS.D.EURCAD.MINI.IP"},
  {base: "USD", quote: "CHF", mini: true, ig_epic: "CS.D.USDCHF.MINI.IP"},
  {base: "AUD", quote: "NZD", mini: true, ig_epic: "CS.D.AUDNZD.MINI.IP"},
  {base: "CAD", quote: "JPY", mini: true, ig_epic: "CS.D.CADJPY.MINI.IP"},
  {base: "EUR", quote: "NZD", mini: true, ig_epic: "CS.D.EURNZD.MINI.IP"},
  {base: "NZD", quote: "JPY", mini: true, ig_epic: "CS.D.NZDJPY.MINI.IP"},
  {base: "GBP", quote: "CHF", mini: true, ig_epic: "CS.D.GBPCHF.MINI.IP"},
  {base: "AUD", quote: "CAD", mini: true, ig_epic: "CS.D.AUDCAD.MINI.IP"},
  {base: "XPT", quote: "USD", mini: true, ig_epic: "CS.D.PLAT.CFM.IP"},
  {base: "NZD", quote: "CAD", mini: true, ig_epic: "CS.D.NZDCAD.MINI.IP"},
  {base: "USD", quote: "MXN", mini: true, ig_epic: "CS.D.USDMXN.MINI.IP"},
  {base: "US ", quote: "oll", mini: false, ig_epic: "CC.D.DX.UMA.IP"},
  {base: "AUD", quote: "GBP", mini: true, ig_epic: "CS.D.AUDGBP.MINI.IP"},
  {base: "EUR", quote: "CHF", mini: true, ig_epic: "CS.D.EURCHF.MINI.IP"},
  {base: "CAD", quote: "CHF", mini: true, ig_epic: "CS.D.CADCHF.MINI.IP"},
  {base: "NZD", quote: "EUR", mini: true, ig_epic: "CS.D.NZDEUR.MINI.IP"},
  {base: "CHF", quote: "JPY", mini: true, ig_epic: "CS.D.CHFJPY.MINI.IP"},
  {base: "USD", quote: "ZAR", mini: true, ig_epic: "CS.D.USDZAR.MINI.IP"},
  {base: "AUD", quote: "CHF", mini: true, ig_epic: "CS.D.AUDCHF.MINI.IP"},
  {base: "NZD", quote: "GBP", mini: true, ig_epic: "CS.D.NZDGBP.MINI.IP"},
  {base: "AUD", quote: "EUR", mini: true, ig_epic: "CS.D.AUDEUR.MINI.IP"},
  {base: "EUR", quote: "SEK", mini: true, ig_epic: "CS.D.EURSEK.MINI.IP"},
  {base: "NZD", quote: "CHF", mini: true, ig_epic: "CS.D.NZDCHF.MINI.IP"},
  {base: "GBP", quote: "ZAR", mini: true, ig_epic: "CS.D.GBPZAR.MINI.IP"},
  {base: "USD", quote: "CNH", mini: true, ig_epic: "CS.D.USDCNH.MINI.IP"},
  {base: "USD", quote: "SGD", mini: true, ig_epic: "CS.D.USDSGD.MINI.IP"},
  {base: "USD", quote: "TRY", mini: true, ig_epic: "CS.D.USDTRY.MINI.IP"},
  {base: "EUR", quote: "SGD", mini: true, ig_epic: "CS.D.EURSGD.MINI.IP"},
  {base: "XPD", quote: "USD", mini: true, ig_epic: "CS.D.PALL.CFM.IP"},
  {base: "GBP", quote: "SGD", mini: true, ig_epic: "CS.D.GBPSGD.MINI.IP"},
  {base: "USD", quote: "SEK", mini: true, ig_epic: "CS.D.USDSEK.MINI.IP"},
  {base: "CAD", quote: "NOK", mini: true, ig_epic: "CS.D.CADNOK.MINI.IP"},
  {base: "GBP", quote: "SEK", mini: true, ig_epic: "CS.D.GBPSEK.MINI.IP"},
  {base: "GBP", quote: "PLN", mini: true, ig_epic: "CS.D.GBPPLN.MINI.IP"},
  {base: "NZD", quote: "AUD", mini: true, ig_epic: "CS.D.NZDAUD.MINI.IP"},
  {base: "USD", quote: "NOK", mini: true, ig_epic: "CS.D.USDNOK.MINI.IP"},
  {base: "EUR", quote: "TRY", mini: true, ig_epic: "CS.D.EURTRY.MINI.IP"},
  {base: "GBP", quote: "TRY", mini: true, ig_epic: "CS.D.GBPTRY.MINI.IP"},
  {base: "SGD", quote: "JPY", mini: true, ig_epic: "CS.D.SGDJPY.MINI.IP"},
  {base: "USD", quote: "BRL", mini: true, ig_epic: "CS.D.USDBRL.MINI.IP"},
  {base: "AUD", quote: "SGD", mini: true, ig_epic: "CS.D.AUDSGD.MINI.IP"},
  {base: "EUR", quote: "ZAR", mini: true, ig_epic: "CS.D.EURZAR.MINI.IP"},
  {base: "GBP", quote: "MXN", mini: true, ig_epic: "CS.D.GBPMXN.MINI.IP"},
  {base: "CNH", quote: "JPY", mini: true, ig_epic: "CS.D.CNHJPY.MINI.IP"},
  {base: "EUR", quote: "MXN", mini: true, ig_epic: "CS.D.EURMXN.MINI.IP"},
  {base: "GBP", quote: "NOK", mini: true, ig_epic: "CS.D.GBPNOK.MINI.IP"},
  {base: "NOK", quote: "SEK", mini: true, ig_epic: "CS.D.NOKSEK.MINI.IP"},
  {base: "EUR", quote: "CNH", mini: true, ig_epic: "CS.D.EURCNH.MINI.IP"},
  {base: "EUR", quote: "NOK", mini: true, ig_epic: "CS.D.EURNOK.MINI.IP"},
  {base: "GBP", quote: "HUF", mini: true, ig_epic: "CS.D.GBPHUF.MINI.IP"},
  {base: "USD", quote: "CZK", mini: true, ig_epic: "CS.D.USDCZK.MINI.IP"},
  {base: "USD", quote: "HUF", mini: true, ig_epic: "CS.D.USDHUF.MINI.IP"},
  {base: "USD", quote: "ILS", mini: true, ig_epic: "CS.D.USDILS.MINI.IP"},
  {base: "USD", quote: "KRW", mini: true, ig_epic: "CS.D.USDKRW.MINI.IP"},
  {base: "USD", quote: "PHP", mini: true, ig_epic: "CS.D.USDPHP.MINI.IP"},
  {base: "USD", quote: "PLN", mini: true, ig_epic: "CS.D.USDPLN.MINI.IP"},
  {base: "AUD", quote: "CNH", mini: true, ig_epic: "CS.D.AUDCNH.MINI.IP"},
  {base: "BRL", quote: "JPY", mini: true, ig_epic: "CS.D.BRLJPY.MINI.IP"},
  {base: "CAD", quote: "CNH", mini: true, ig_epic: "CS.D.CADCNH.MINI.IP"},
  {base: "CHF", quote: "HUF", mini: true, ig_epic: "CS.D.CHFHUF.MINI.IP"},
  {base: "CHF", quote: "NOK", mini: true, ig_epic: "CS.D.CHFNOK.MINI.IP"},
  {base: "EUR", quote: "CZK", mini: true, ig_epic: "CS.D.EURCZK.MINI.IP"},
  {base: "EUR", quote: "DKK", mini: true, ig_epic: "CS.D.EURDKK.MINI.IP"},
  {base: "EUR", quote: "HUF", mini: true, ig_epic: "CS.D.EURHUF.MINI.IP"},
  {base: "EUR", quote: "ILS", mini: true, ig_epic: "CS.D.EURILS.MINI.IP"},
  {base: "EUR", quote: "PLN", mini: true, ig_epic: "CS.D.EURPLN.MINI.IP"},
  {base: "EUR", quote: "RUB", mini: true, ig_epic: "CS.D.sp_EURRUB.MINI.IP"},
  {base: "GBP", quote: "CNH", mini: true, ig_epic: "CS.D.GBPCNH.MINI.IP"},
  {base: "GBP", quote: "CZK", mini: true, ig_epic: "CS.D.GBPCZK.MINI.IP"},
  {base: "GBP", quote: "DKK", mini: true, ig_epic: "CS.D.GBPDKK.MINI.IP"},
  {base: "GBP", quote: "ILS", mini: true, ig_epic: "CS.D.GBPILS.MINI.IP"},
  {base: "GBP", quote: "INR", mini: true, ig_epic: "CS.D.GBPINR.MINI.IP"},
  {base: "MXN", quote: "JPY", mini: true, ig_epic: "CS.D.MXNJPY.MINI.IP"},
  {base: "NOK", quote: "JPY", mini: true, ig_epic: "CS.D.NOKJPY.MINI.IP"},
  {base: "NZD", quote: "CNH", mini: true, ig_epic: "CS.D.NZDCNH.MINI.IP"},
  {base: "PLN", quote: "JPY", mini: true, ig_epic: "CS.D.PLNJPY.MINI.IP"},
  {base: "SEK", quote: "JPY", mini: true, ig_epic: "CS.D.SEKJPY.MINI.IP"},
  {base: "TRY", quote: "JPY", mini: true, ig_epic: "CS.D.TRYJPY.MINI.IP"},
  {base: "USD", quote: "DKK", mini: true, ig_epic: "CS.D.USDDKK.MINI.IP"},
  {base: "USD", quote: "IDR", mini: true, ig_epic: "CS.D.USDIDR.MINI.IP"},
  {base: "USD", quote: "INR", mini: true, ig_epic: "CS.D.USDINR.MINI.IP"},
  {base: "USD", quote: "MYR", mini: true, ig_epic: "CS.D.USDMYR.MINI.IP"},
  {base: "USD", quote: "RUB", mini: true, ig_epic: "CS.D.sp_USDRUB.MINI.IP"},
  {base: "USD", quote: "TWD", mini: true, ig_epic: "CS.D.USDTWD.MINI.IP"},
  {base: "GBP", quote: "USD", mini: false, ig_epic: "CS.D.GBPUSD.CFD.IP"},
  {base: "EUR", quote: "USD", mini: false, ig_epic: "CS.D.EURUSD.CFD.IP"},
  {base: "USD", quote: "JPY", mini: false, ig_epic: "CS.D.USDJPY.CFD.IP"},
  {base: "AUD", quote: "USD", mini: false, ig_epic: "CS.D.AUDUSD.CFD.IP"},
  {base: "EUR", quote: "GBP", mini: false, ig_epic: "CS.D.EURGBP.CFD.IP"},
  {base: "USD", quote: "CAD", mini: false, ig_epic: "CS.D.USDCAD.CFD.IP"},
  {base: "GBP", quote: "JPY", mini: false, ig_epic: "CS.D.GBPJPY.CFD.IP"},
  {base: "GBP", quote: "EUR", mini: false, ig_epic: "CS.D.GBPEUR.CFD.IP"},
  {base: "EUR", quote: "JPY", mini: false, ig_epic: "CS.D.EURJPY.CFD.IP"},
  {base: "NZD", quote: "USD", mini: false, ig_epic: "CS.D.NZDUSD.CFD.IP"},
  {base: "GBP", quote: "AUD", mini: false, ig_epic: "CS.D.GBPAUD.CFD.IP"},
  {base: "EUR", quote: "AUD", mini: false, ig_epic: "CS.D.EURAUD.CFD.IP"},
  {base: "AUD", quote: "JPY", mini: false, ig_epic: "CS.D.AUDJPY.CFD.IP"},
  {base: "GBP", quote: "NZD", mini: false, ig_epic: "CS.D.GBPNZD.CFD.IP"},
  {base: "GBP", quote: "CAD", mini: false, ig_epic: "CS.D.GBPCAD.CFD.IP"},
  {base: "EUR", quote: "CAD", mini: false, ig_epic: "CS.D.EURCAD.CFD.IP"},
  {base: "USD", quote: "CHF", mini: false, ig_epic: "CS.D.USDCHF.CFD.IP"},
  {base: "AUD", quote: "NZD", mini: false, ig_epic: "CS.D.AUDNZD.CFD.IP"},
  {base: "CAD", quote: "JPY", mini: false, ig_epic: "CS.D.CADJPY.CFD.IP"},
  {base: "EUR", quote: "NZD", mini: false, ig_epic: "CS.D.EURNZD.CFD.IP"},
  {base: "NZD", quote: "JPY", mini: false, ig_epic: "CS.D.NZDJPY.CFD.IP"},
  {base: "GBP", quote: "CHF", mini: false, ig_epic: "CS.D.GBPCHF.CFD.IP"},
  {base: "AUD", quote: "CAD", mini: false, ig_epic: "CS.D.AUDCAD.CFD.IP"},
  {base: "XPT", quote: "USD", mini: false, ig_epic: "CS.D.PLAT.CFM.IP"},
  {base: "NZD", quote: "CAD", mini: false, ig_epic: "CS.D.NZDCAD.CFD.IP"},
  {base: "USD", quote: "MXN", mini: false, ig_epic: "CS.D.USDMXN.CFD.IP"},
  {base: "US ", quote: "oll", mini: false, ig_epic: "CC.D.DX.UMA.IP"},
  {base: "AUD", quote: "GBP", mini: false, ig_epic: "CS.D.AUDGBP.CFD.IP"},
  {base: "EUR", quote: "CHF", mini: false, ig_epic: "CS.D.EURCHF.CFD.IP"},
  {base: "CAD", quote: "CHF", mini: false, ig_epic: "CS.D.CADCHF.CFD.IP"},
  {base: "NZD", quote: "EUR", mini: false, ig_epic: "CS.D.NZDEUR.CFD.IP"},
  {base: "CHF", quote: "JPY", mini: false, ig_epic: "CS.D.CHFJPY.CFD.IP"},
  {base: "USD", quote: "ZAR", mini: false, ig_epic: "CS.D.USDZAR.CFD.IP"},
  {base: "AUD", quote: "CHF", mini: false, ig_epic: "CS.D.AUDCHF.CFD.IP"},
  {base: "NZD", quote: "GBP", mini: false, ig_epic: "CS.D.NZDGBP.CFD.IP"},
  {base: "AUD", quote: "EUR", mini: false, ig_epic: "CS.D.AUDEUR.CFD.IP"},
  {base: "EUR", quote: "SEK", mini: false, ig_epic: "CS.D.EURSEK.CFD.IP"},
  {base: "NZD", quote: "CHF", mini: false, ig_epic: "CS.D.NZDCHF.CFD.IP"},
  {base: "GBP", quote: "ZAR", mini: false, ig_epic: "CS.D.GBPZAR.CFD.IP"},
  {base: "USD", quote: "CNH", mini: false, ig_epic: "CS.D.USDCNH.CFD.IP"},
  {base: "USD", quote: "SGD", mini: false, ig_epic: "CS.D.USDSGD.CFD.IP"},
  {base: "USD", quote: "TRY", mini: false, ig_epic: "CS.D.USDTRY.CFD.IP"},
  {base: "EUR", quote: "SGD", mini: false, ig_epic: "CS.D.EURSGD.CFD.IP"},
  {base: "XPD", quote: "USD", mini: false, ig_epic: "CS.D.PALL.CFM.IP"},
  {base: "GBP", quote: "SGD", mini: false, ig_epic: "CS.D.GBPSGD.CFD.IP"},
  {base: "USD", quote: "SEK", mini: false, ig_epic: "CS.D.USDSEK.CFD.IP"},
  {base: "CAD", quote: "NOK", mini: false, ig_epic: "CS.D.CADNOK.CFD.IP"},
  {base: "GBP", quote: "SEK", mini: false, ig_epic: "CS.D.GBPSEK.CFD.IP"},
  {base: "GBP", quote: "PLN", mini: false, ig_epic: "CS.D.GBPPLN.CFD.IP"},
  {base: "NZD", quote: "AUD", mini: false, ig_epic: "CS.D.NZDAUD.CFD.IP"},
  {base: "USD", quote: "NOK", mini: false, ig_epic: "CS.D.USDNOK.CFD.IP"},
  {base: "EUR", quote: "TRY", mini: false, ig_epic: "CS.D.EURTRY.CFD.IP"},
  {base: "GBP", quote: "TRY", mini: false, ig_epic: "CS.D.GBPTRY.CFD.IP"},
  {base: "SGD", quote: "JPY", mini: false, ig_epic: "CS.D.SGDJPY.CFD.IP"},
  {base: "USD", quote: "BRL", mini: false, ig_epic: "CS.D.USDBRL.CFD.IP"},
  {base: "AUD", quote: "SGD", mini: false, ig_epic: "CS.D.AUDSGD.CFD.IP"},
  {base: "EUR", quote: "ZAR", mini: false, ig_epic: "CS.D.EURZAR.CFD.IP"},
  {base: "GBP", quote: "MXN", mini: false, ig_epic: "CS.D.GBPMXN.CFD.IP"},
  {base: "CNH", quote: "JPY", mini: false, ig_epic: "CS.D.CNHJPY.CFD.IP"},
  {base: "EUR", quote: "MXN", mini: false, ig_epic: "CS.D.EURMXN.CFD.IP"},
  {base: "GBP", quote: "NOK", mini: false, ig_epic: "CS.D.GBPNOK.CFD.IP"},
  {base: "NOK", quote: "SEK", mini: false, ig_epic: "CS.D.NOKSEK.CFD.IP"},
  {base: "EUR", quote: "CNH", mini: false, ig_epic: "CS.D.EURCNH.CFD.IP"},
  {base: "EUR", quote: "NOK", mini: false, ig_epic: "CS.D.EURNOK.CFD.IP"},
  {base: "GBP", quote: "HUF", mini: false, ig_epic: "CS.D.GBPHUF.CFD.IP"},
  {base: "USD", quote: "CZK", mini: false, ig_epic: "CS.D.USDCZK.CFD.IP"},
  {base: "USD", quote: "HUF", mini: false, ig_epic: "CS.D.USDHUF.CFD.IP"},
  {base: "USD", quote: "ILS", mini: false, ig_epic: "CS.D.USDILS.CFD.IP"},
  {base: "USD", quote: "KRW", mini: false, ig_epic: "CS.D.USDKRW.CFD.IP"},
  {base: "USD", quote: "PHP", mini: false, ig_epic: "CS.D.USDPHP.CFD.IP"},
  {base: "USD", quote: "PLN", mini: false, ig_epic: "CS.D.USDPLN.CFD.IP"},
  {base: "AUD", quote: "CNH", mini: false, ig_epic: "CS.D.AUDCNH.CFD.IP"},
  {base: "BRL", quote: "JPY", mini: false, ig_epic: "CS.D.BRLJPY.CFD.IP"},
  {base: "CAD", quote: "CNH", mini: false, ig_epic: "CS.D.CADCNH.CFD.IP"},
  {base: "CHF", quote: "HUF", mini: false, ig_epic: "CS.D.CHFHUF.CFD.IP"},
  {base: "CHF", quote: "NOK", mini: false, ig_epic: "CS.D.CHFNOK.CFD.IP"},
  {base: "EUR", quote: "CZK", mini: false, ig_epic: "CS.D.EURCZK.CFD.IP"},
  {base: "EUR", quote: "DKK", mini: false, ig_epic: "CS.D.EURDKK.CFD.IP"},
  {base: "EUR", quote: "HUF", mini: false, ig_epic: "CS.D.EURHUF.CFD.IP"},
  {base: "EUR", quote: "ILS", mini: false, ig_epic: "CS.D.EURILS.CFD.IP"},
  {base: "EUR", quote: "PLN", mini: false, ig_epic: "CS.D.EURPLN.CFD.IP"},
  {base: "EUR", quote: "RUB", mini: false, ig_epic: "CS.D.sp_EURRUB.CFD.IP"},
  {base: "GBP", quote: "CNH", mini: false, ig_epic: "CS.D.GBPCNH.CFD.IP"},
  {base: "GBP", quote: "CZK", mini: false, ig_epic: "CS.D.GBPCZK.CFD.IP"},
  {base: "GBP", quote: "DKK", mini: false, ig_epic: "CS.D.GBPDKK.CFD.IP"},
  {base: "GBP", quote: "ILS", mini: false, ig_epic: "CS.D.GBPILS.CFD.IP"},
  {base: "GBP", quote: "INR", mini: false, ig_epic: "CS.D.GBPINR.CFD.IP"},
  {base: "MXN", quote: "JPY", mini: false, ig_epic: "CS.D.MXNJPY.CFD.IP"},
  {base: "NOK", quote: "JPY", mini: false, ig_epic: "CS.D.NOKJPY.CFD.IP"},
  {base: "NZD", quote: "CNH", mini: false, ig_epic: "CS.D.NZDCNH.CFD.IP"},
  {base: "PLN", quote: "JPY", mini: false, ig_epic: "CS.D.PLNJPY.CFD.IP"},
  {base: "SEK", quote: "JPY", mini: false, ig_epic: "CS.D.SEKJPY.CFD.IP"},
  {base: "TRY", quote: "JPY", mini: false, ig_epic: "CS.D.TRYJPY.CFD.IP"},
  {base: "USD", quote: "DKK", mini: false, ig_epic: "CS.D.USDDKK.CFD.IP"},
  {base: "USD", quote: "IDR", mini: false, ig_epic: "CS.D.USDIDR.CFD.IP"},
  {base: "USD", quote: "INR", mini: false, ig_epic: "CS.D.USDINR.CFD.IP"},
  {base: "USD", quote: "MYR", mini: false, ig_epic: "CS.D.USDMYR.CFD.IP"},
  {base: "USD", quote: "RUB", mini: false, ig_epic: "CS.D.sp_USDRUB.CFD.IP"},
  {base: "USD", quote: "TWD", mini: false, ig_epic: "CS.D.USDTWD.CFD.IP"},
  {base: "XRP", quote: "USD", mini: false, ig_epic: "CS.D.XRPUSD.CFD.IP"}
])
