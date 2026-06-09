-- YDB Ydb
DECLARE $Ids0_1 Text(2) -- String
SET     $Ids0_1 = 'oh'u
DECLARE $Ids0_2 Text(3) -- String
SET     $Ids0_2 = 'oh\''u
DECLARE $Ids0_3 Text(3) -- String
SET     $Ids0_3 = 'oh\\'u

SELECT
	COUNT(*) as Count_1
FROM
	Person p
WHERE
	p.FirstName IN ($Ids0_1, $Ids0_2, $Ids0_3)

