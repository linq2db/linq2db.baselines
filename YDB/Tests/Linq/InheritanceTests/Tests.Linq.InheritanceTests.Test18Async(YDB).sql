-- YDB Ydb
DECLARE $Ids0_1 Int32
SET     $Ids0_1 = 0
DECLARE $Ids0_2 Int32
SET     $Ids0_2 = 1
DECLARE $Ids0_3 Int32
SET     $Ids0_3 = 2
DECLARE $Ids0_4 Int32
SET     $Ids0_4 = 3
DECLARE $Ids0_5 Int32
SET     $Ids0_5 = 4
DECLARE $Ids0_6 Int32
SET     $Ids0_6 = 5
DECLARE $Ids0_7 Int32
SET     $Ids0_7 = 6
DECLARE $Ids0_8 Int32
SET     $Ids0_8 = 7
DECLARE $Ids0_9 Int32
SET     $Ids0_9 = 8
DECLARE $Ids0_10 Int32
SET     $Ids0_10 = 9

SELECT DISTINCT
	p1.PersonID as PersonID,
	p1.Gender as Gender,
	p1.FirstName as FirstName,
	p1.LastName as LastName
FROM
	Person p1
WHERE
	p1.PersonID IN ($Ids0_1, $Ids0_2, $Ids0_3, $Ids0_4, $Ids0_5, $Ids0_6, $Ids0_7, $Ids0_8, $Ids0_9, $Ids0_10) AND
	p1.Gender = 'F'u

