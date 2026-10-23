-- YDB Ydb
$CTE_1 = 	SELECT
		p.IntValue as IntValue
	FROM
		LinqDataTypes p
	WHERE
		p.ID = 2
	LIMIT 1
;

SELECT
	CASE
		WHEN NOT CASE
			WHEN i.BoolValue IS NOT NULL THEN i.BoolValue
			ELSE false
		END AND (i.IntValue IS NULL AND 1 IN (
			SELECT
				1
			FROM
				$CTE_1 t1
			WHERE
				t1.IntValue IS NULL
		) OR i.IntValue IS NOT NULL AND i.IntValue IN (
			SELECT
				t1.IntValue
			FROM
				$CTE_1 t1
			WHERE
				t1.IntValue IS NOT NULL
		))
			THEN true
		ELSE false
	END as c1
FROM
	LinqDataTypes i
WHERE
	i.ID = 1

