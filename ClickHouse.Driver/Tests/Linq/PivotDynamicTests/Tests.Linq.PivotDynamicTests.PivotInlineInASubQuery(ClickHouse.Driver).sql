-- ClickHouse.Driver ClickHouse
SELECT DISTINCT
	c_1.Category
FROM
	CategorySales c_1
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT
					g_1.Category as Key_1,
					sumOrNull(CASE
						WHEN g_1.Year = 2010 THEN g_1.Amount
						ELSE NULL
					END) as Y2010
				FROM
					CategorySales g_1
				WHERE
					g_1.Amount > toDecimal128('0', 10)
				GROUP BY
					g_1.Category
			) r
		WHERE
			(r.Key_1 = c_1.Category OR r.Key_1 IS NULL AND c_1.Category IS NULL) AND
			r.Y2010 > toDecimal128('16', 10)
	)

