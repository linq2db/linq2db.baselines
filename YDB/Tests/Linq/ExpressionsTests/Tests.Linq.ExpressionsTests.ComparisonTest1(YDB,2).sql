-- YDB Ydb
DECLARE $personId Int32
SET     $personId = 2
DECLARE $personId_1 Int32
SET     $personId_1 = 0

$CTE_1 = 	SELECT
		t1.PersonID as PersonID
	FROM
		Patient t1
	WHERE
		t1.PersonID = $personId
;
$CTE_2 = 	SELECT
		t2.PersonID as PersonID
	FROM
		Patient t2
	WHERE
		t2.PersonID = $personId_1
;
$CTE_3 = 	SELECT
		t3.PersonID as PersonID
	FROM
		$CTE_1 t3
;
$CTE_4 = 	SELECT
		t4.PersonID as PersonID
	FROM
		$CTE_2 t4
;
$CTE_5 = 	SELECT
		COUNT(t5.PersonID) as cte_value
	FROM
		Patient t5
	WHERE
		t5.PersonID = $personId_1 AND t5.PersonID NOT IN (
			SELECT
				t6.PersonID
			FROM
				$CTE_3 t6
		)
;
$CTE_6 = 	SELECT
		COUNT(t7.PersonID) as cte_value
	FROM
		Patient t7
	WHERE
		t7.PersonID = $personId AND t7.PersonID NOT IN (
			SELECT
				t8.PersonID
			FROM
				$CTE_4 t8
		)
;

SELECT
	EXISTS(
		SELECT
			1
		FROM
			Person t9
		WHERE
			0 IN (
				SELECT
					t10.cte_value
				FROM
					$CTE_5 t10
			) AND
			0 IN (
				SELECT
					t11.cte_value
				FROM
					$CTE_6 t11
			)
	) as c1

