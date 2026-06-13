-- YDB Ydb
DECLARE $Ids0_1 Int32
SET     $Ids0_1 = 1
DECLARE $Ids0_2 Int32
SET     $Ids0_2 = 3

SELECT
	t2.ID as ID,
	t2.LastName as LastName,
	t2.flag as flag
FROM
	(
		SELECT
			t1.PersonID IN ($Ids0_1, $Ids0_2) as flag,
			t1.PersonID as ID,
			t1.LastName as LastName
		FROM
			Person t1
	) t2
ORDER BY
	t2.flag

