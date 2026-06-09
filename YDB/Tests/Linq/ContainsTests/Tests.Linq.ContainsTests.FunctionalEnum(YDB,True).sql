-- YDB Ydb
DECLARE $Ids0_1 Text(5) -- String
SET     $Ids0_1 = 'THREE'u
DECLARE $Ids0_2 Text(4) -- String
SET     $Ids0_2 = 'FOUR'u

SELECT
	s.Id as Id
FROM
	Src s
WHERE
	s.`Enum` IN ($Ids0_1, $Ids0_2)
LIMIT 1

-- YDB Ydb
DECLARE $Ids0_1 Text(5) -- String
SET     $Ids0_1 = 'THREE'u

SELECT
	s.Id as Id
FROM
	Src s
WHERE
	(s.`Enum` IN ($Ids0_1) OR s.`Enum` IS NULL)
LIMIT 1

-- YDB Ydb
DECLARE $Ids0_1 Text(5) -- String
SET     $Ids0_1 = 'THREE'u
DECLARE $Ids0_2 Text(3) -- String
SET     $Ids0_2 = 'TWO'u

SELECT
	s.Id as Id
FROM
	Src s
WHERE
	s.`Enum` IN ($Ids0_1, $Ids0_2)
LIMIT 1

-- YDB Ydb
DECLARE $Ids0_1 Text(3) -- String
SET     $Ids0_1 = 'TWO'u

SELECT
	s.Id as Id
FROM
	Src s
WHERE
	(s.`Enum` NOT IN ($Ids0_1) AND s.`Enum` IS NOT NULL)
LIMIT 1

-- YDB Ydb
DECLARE $Ids0_1 Text(5) -- String
SET     $Ids0_1 = 'THREE'u
DECLARE $Ids0_2 Text(3) -- String
SET     $Ids0_2 = 'TWO'u

SELECT
	s.Id as Id
FROM
	Src s
WHERE
	(s.`Enum` NOT IN ($Ids0_1, $Ids0_2) OR s.`Enum` IS NULL)
LIMIT 1

