BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	CASE
		WHEN NOT CASE
			WHEN i.BoolValue IS NOT NULL THEN i.BoolValue
			ELSE false
		END AND CASE
			WHEN i.IntValue <> (
				SELECT
					p.IntValue
				FROM
					LinqDataTypes p
				WHERE
					p.ID = 2
				LIMIT 1
			)
				THEN false
			ELSE true
		END
			THEN true
		ELSE false
	END
FROM
	LinqDataTypes i
WHERE
	i.ID = 1

