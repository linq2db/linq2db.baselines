BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	CASE
		WHEN (i.BoolValue = false AND i.BoolValue IS NOT NULL OR i.BoolValue IS NULL OR CASE
			WHEN i.BoolValue IS NOT NULL THEN i.BoolValue
			ELSE false
		END IS NULL) AND (i.IntValue = (
			SELECT
				p.IntValue
			FROM
				LinqDataTypes p
			WHERE
				p.ID = 2
			LIMIT 1
		) OR i.IntValue IS NULL AND (
			SELECT
				p.IntValue
			FROM
				LinqDataTypes p
			WHERE
				p.ID = 2
			LIMIT 1
		) IS NULL)
			THEN true
		ELSE false
	END
FROM
	LinqDataTypes i
WHERE
	i.ID = 1

