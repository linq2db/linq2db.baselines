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
		COUNT(*) as Count_1
	FROM
		Patient t3
	WHERE
		t3.PersonID = $personId_1 AND t3.PersonID NOT IN (
			SELECT
				t4.PersonID
			FROM
				$CTE_1 t4
		)
;
$CTE_4 = 	SELECT
		COUNT(*) as Count_1
	FROM
		Patient t5
	WHERE
		t5.PersonID = $personId AND t5.PersonID NOT IN (
			SELECT
				t6.PersonID
			FROM
				$CTE_2 t6
		)
;

SELECT
	EXISTS(
		SELECT
			1
		FROM
			Person t7
		WHERE
			0 IN (
				SELECT
					t8.Count_1
				FROM
					$CTE_3 t8
			) AND
			0 IN (
				SELECT
					t9.Count_1
				FROM
					$CTE_4 t9
			)
	) as c1

