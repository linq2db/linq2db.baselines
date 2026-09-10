-- YDB Ydb
DECLARE $ID Int32
SET     $ID = 1

$CTE_1 = 	SELECT
		t1.PersonID as ID
	FROM
		Person t1
;

SELECT
	CASE
		WHEN $ID IN (
			SELECT
				t2.ID
			FROM
				$CTE_1 t2
		)
			THEN true
		ELSE false
	END as c1

