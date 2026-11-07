-- YDB Ydb
SELECT
	Coalesce(t.Code, ''u) || Coalesce(t.Title, ''u) as c1
FROM
	PrefixedCodeWithTitle t
LIMIT 2

-- YDB Ydb
DECLARE Code Text(4) -- AnsiString
SET     Code = 'x:AT'u

$CTE_1 = 	SELECT
		Coalesce(t.Code, ''u) || Coalesce(t.Title, ''u) as cte_value
	FROM
		PrefixedCodeWithTitle t
;

SELECT
	CASE
		WHEN $Code IN (
			SELECT
				t1.cte_value
			FROM
				$CTE_1 t1
		)
			THEN true
		ELSE false
	END as c1

