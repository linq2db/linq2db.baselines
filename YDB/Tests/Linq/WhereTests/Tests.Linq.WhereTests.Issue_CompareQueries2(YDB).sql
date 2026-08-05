-- YDB Ydb
DECLARE $Ids0_1 Int32
SET     $Ids0_1 = 3
DECLARE $Ids0_1_1 Int32
SET     $Ids0_1_1 = 1
DECLARE $Ids0_2 Int32
SET     $Ids0_2 = 2

$CTE_1 = 	SELECT
		p.PersonID as ID
	FROM
		Person p
	WHERE
		p.PersonID IN ($Ids0_1)
;

SELECT
	COUNT(p_1.PersonID) as c1
FROM
	Person p_1
WHERE
	p_1.PersonID IN ($Ids0_1_1, $Ids0_2) AND p_1.PersonID NOT IN (
		SELECT
			t1.ID
		FROM
			$CTE_1 t1
	)
LIMIT 2

-- YDB Ydb
DECLARE $Ids0_1 Int32
SET     $Ids0_1 = 1
DECLARE $Ids0_2 Int32
SET     $Ids0_2 = 2
DECLARE $Ids0_1_1 Int32
SET     $Ids0_1_1 = 3

$CTE_1 = 	SELECT
		p.PersonID as ID
	FROM
		Person p
	WHERE
		p.PersonID IN ($Ids0_1, $Ids0_2)
;

SELECT
	COUNT(p_1.PersonID) as c1
FROM
	Person p_1
WHERE
	p_1.PersonID IN ($Ids0_1_1) AND p_1.PersonID NOT IN (
		SELECT
			t1.ID
		FROM
			$CTE_1 t1
	)
LIMIT 2

