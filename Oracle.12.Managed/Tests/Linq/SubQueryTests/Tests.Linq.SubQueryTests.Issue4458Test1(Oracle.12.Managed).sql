-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	m_1."Id",
	d."ItemId",
	d."UserId",
	d."Score"
FROM
	(
		SELECT DISTINCT
			t1."Id"
		FROM
			"Issue4458Item" t1
		WHERE
			EXISTS(
				SELECT
					*
				FROM
					"Review" r
				WHERE
					r."ItemId" = t1."Id" AND r."Score" > 95
			)
	) m_1
		INNER JOIN "Review" d ON d."ItemId" = m_1."Id"
ORDER BY
	d."ItemId",
	d."UserId"

-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	i."Id",
	(
		SELECT
			SUM(s."QuantityAvailable")
		FROM
			"WarehouseStock" s
		WHERE
			s."ItemId" = i."Id" AND (
				SELECT
					stock."ItemId"
				FROM
					"WarehouseStock" stock
				WHERE
					stock."ItemId" = i."Id"
				GROUP BY
					stock."ItemId"
			) = s."ItemId"
	)
FROM
	"Issue4458Item" i
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Review" r
		WHERE
			r."ItemId" = i."Id" AND r."Score" > 95
	)

-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t1."Id"
FROM
	"Issue4458Item" t1

-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t1."ItemId",
	t1."QuantityAvailable",
	t1."WarehouseId"
FROM
	"WarehouseStock" t1

-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t1."ItemId",
	t1."UserId",
	t1."Score"
FROM
	"Review" t1

