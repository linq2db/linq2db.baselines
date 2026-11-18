-- YDB Ydb
DECLARE Code Text(3) -- AnsiString
SET     Code = 'x:A'u

$CTE_1 = 	SELECT
		CAST(t.Code AS Text) as cte_value
	FROM
		PrefixedCode t
;

SELECT
	CASE
		WHEN $Code IN (
			SELECT
				t1.cte_value
			FROM
				$CTE_1 t1
			WHERE
				t1.cte_value IS NOT NULL
		)
			THEN true
		ELSE false
	END as c1

