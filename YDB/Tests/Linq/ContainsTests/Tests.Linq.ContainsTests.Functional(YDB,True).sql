-- YDB Ydb
DECLARE $Ids0_1 Int32
SET     $Ids0_1 = -1
DECLARE $Ids0_2 Int32
SET     $Ids0_2 = -2

SELECT
	s.Id as Id
FROM
	Src s
WHERE
	s.`Int` IN ($Ids0_1, $Ids0_2)
LIMIT 1

-- YDB Ydb
DECLARE $Ids0_1 Int32
SET     $Ids0_1 = -1

SELECT
	s.Id as Id
FROM
	Src s
WHERE
	(s.`Int` IN ($Ids0_1) OR s.`Int` IS NULL)
LIMIT 1

-- YDB Ydb
DECLARE $Ids0_1 Int32
SET     $Ids0_1 = -1
DECLARE $Ids0_2 Int32
SET     $Ids0_2 = 2

SELECT
	s.Id as Id
FROM
	Src s
WHERE
	s.`Int` IN ($Ids0_1, $Ids0_2)
LIMIT 1

-- YDB Ydb
DECLARE $Ids0_1 Int32
SET     $Ids0_1 = 2

SELECT
	s.Id as Id
FROM
	Src s
WHERE
	(s.`Int` NOT IN ($Ids0_1) AND s.`Int` IS NOT NULL)
LIMIT 1

-- YDB Ydb
DECLARE $Ids0_1 Int32
SET     $Ids0_1 = -1
DECLARE $Ids0_2 Int32
SET     $Ids0_2 = 2

SELECT
	s.Id as Id
FROM
	Src s
WHERE
	(s.`Int` NOT IN ($Ids0_1, $Ids0_2) OR s.`Int` IS NULL)
LIMIT 1

