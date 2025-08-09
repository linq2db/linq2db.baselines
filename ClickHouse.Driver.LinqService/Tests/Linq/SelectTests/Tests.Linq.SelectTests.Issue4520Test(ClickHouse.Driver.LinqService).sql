BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	CASE
		WHEN NOT CASE
			WHEN i.BoolValue IS NOT NULL THEN i.BoolValue
			ELSE false
		END AND (i.IntValue = (
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

