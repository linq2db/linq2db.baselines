-- YDB Ydb
DECLARE Ids0_1 Text(4) -- String
SET     Ids0_1 = 'John'u
DECLARE Ids0_2 Text(4) -- String
SET     Ids0_2 = 'Jane'u

SELECT
	p.FirstName as FirstName
FROM
	Person p
WHERE
	p.FirstName IN ($Ids0_1, $Ids0_2)

