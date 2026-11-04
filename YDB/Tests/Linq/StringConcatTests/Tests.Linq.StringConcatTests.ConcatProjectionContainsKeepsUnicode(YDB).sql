-- YDB Ydb
DECLARE $suffix Text(3) -- String
SET     $suffix = 'Жук'u

$CTE_1 = 	SELECT
		p.Sku || Coalesce($suffix, ''u) as cte_value
	FROM
		ConcatProduct p
;

SELECT
	CASE
		WHEN 'A-100Жук'u IN (
			SELECT
				t1.cte_value
			FROM
				$CTE_1 t1
		)
			THEN true
		ELSE false
	END as c1

-- YDB Ydb
DECLARE $suffix Text(3) -- String
SET     $suffix = 'Жук'u

$CTE_1 = 	SELECT
		p.Sku || Coalesce($suffix, ''u) as cte_value
	FROM
		ConcatProduct p
;

SELECT
	CASE
		WHEN 'A-100Щит'u IN (
			SELECT
				t1.cte_value
			FROM
				$CTE_1 t1
		)
			THEN true
		ELSE false
	END as c1

