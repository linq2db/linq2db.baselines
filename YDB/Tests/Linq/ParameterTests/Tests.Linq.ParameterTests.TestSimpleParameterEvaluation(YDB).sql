-- YDB Ydb
DECLARE $Ids0_1 Int32
SET     $Ids0_1 = 2
DECLARE $Ids0_2 Int32
SET     $Ids0_2 = 3
DECLARE $Ids0_3 Int32
SET     $Ids0_3 = 4

SELECT
	t1.FirstName as FirstName,
	t1.PersonID as ID,
	t1.LastName as LastName,
	t1.MiddleName as MiddleName,
	t1.Gender as Gender
FROM
	Person t1
WHERE
	t1.PersonID IN ($Ids0_1, $Ids0_2, $Ids0_3)

-- YDB Ydb
DECLARE $Ids0_1 Int32
SET     $Ids0_1 = 1
DECLARE $Ids0_2 Int32
SET     $Ids0_2 = 3
DECLARE $Ids0_3 Int32
SET     $Ids0_3 = 4

SELECT
	t1.FirstName as FirstName,
	t1.PersonID as ID,
	t1.LastName as LastName,
	t1.MiddleName as MiddleName,
	t1.Gender as Gender
FROM
	Person t1
WHERE
	t1.PersonID IN ($Ids0_1, $Ids0_2, $Ids0_3)

