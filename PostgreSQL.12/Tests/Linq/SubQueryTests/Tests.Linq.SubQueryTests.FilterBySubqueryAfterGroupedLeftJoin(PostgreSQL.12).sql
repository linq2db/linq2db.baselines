-- PostgreSQL.12 PostgreSQL12
SELECT
	m_1."Id",
	d."ItemId",
	d."UserId",
	d."Score"
FROM
	"StockItem" m_1
		INNER JOIN "Review" d ON d."ItemId" = m_1."Id"
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Review" r
		WHERE
			r."ItemId" = m_1."Id" AND r."Score" > 95
	)

-- PostgreSQL.12 PostgreSQL12
SELECT
	i."Id",
	(
		SELECT
			SUM(stock."QuantityAvailable")
		FROM
			"WarehouseStock" stock
		WHERE
			stock."ItemId" = i."Id"
		GROUP BY
			stock."ItemId"
	)
FROM
	"StockItem" i
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Review" r
		WHERE
			r."ItemId" = i."Id" AND r."Score" > 95
	)

