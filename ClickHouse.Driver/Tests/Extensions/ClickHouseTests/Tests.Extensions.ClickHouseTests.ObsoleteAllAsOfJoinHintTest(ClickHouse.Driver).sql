-- ClickHouse.Driver ClickHouse

SELECT
	trade.ID,
	quote.ID
FROM
	AsofTrade trade
		LEFT ASOF JOIN AsofQuote quote ON (trade.Symbol = quote.Symbol OR trade.Symbol IS NULL AND quote.Symbol IS NULL) AND trade.Time >= quote.Time

