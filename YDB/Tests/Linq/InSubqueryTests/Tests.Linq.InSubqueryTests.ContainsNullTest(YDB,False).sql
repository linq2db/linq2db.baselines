-- YDB Ydb

$CTE_1 = 	SELECT
		c_1.Value1 as Value1
	FROM
		Parent c_1
;

SELECT
	CASE
		WHEN 1 IN (
			SELECT
				1
			FROM
				$CTE_1 t1
			WHERE
				t1.Value1 IS NULL
		)
			THEN true
		ELSE false
	END as c1

