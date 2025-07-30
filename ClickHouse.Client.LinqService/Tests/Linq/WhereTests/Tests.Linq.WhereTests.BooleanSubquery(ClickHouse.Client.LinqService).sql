BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t.Id,
	t.BoolValue
FROM
	WhereWithBool t
WHERE
	(
		SELECT
			x.BoolValue
		FROM
			WhereWithBool x
		WHERE
			x.Id = 1
	)

