-- PostgreSQL.9.2 PostgreSQL
SELECT
	m_1."Id",
	d."ItemId",
	d."UserId",
	d."Score"
FROM
	"Issue4458Item" m_1
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
ORDER BY
	d."ItemId",
	d."UserId"

-- PostgreSQL.9.2 PostgreSQL
SELECT
	i."Id",
	stock_1."TotalAvailable"
FROM
	"Issue4458Item" i
		LEFT JOIN (
			SELECT
				SUM(stock."QuantityAvailable") as "TotalAvailable",
				stock."ItemId"
			FROM
				"WarehouseStock" stock
			GROUP BY
				stock."ItemId"
		) stock_1 ON stock_1."ItemId" = i."Id"
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Review" r
		WHERE
			r."ItemId" = i."Id" AND r."Score" > 95
	)

-- PostgreSQL.9.2 PostgreSQL
SELECT
	t1."Id"
FROM
	"Issue4458Item" t1

-- PostgreSQL.9.2 PostgreSQL
SELECT
	t1."ItemId",
	t1."QuantityAvailable",
	t1."WarehouseId"
FROM
	"WarehouseStock" t1

-- PostgreSQL.9.2 PostgreSQL
SELECT
	t1."ItemId",
	t1."UserId",
	t1."Score"
FROM
	"Review" t1

