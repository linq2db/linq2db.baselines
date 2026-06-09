-- YDB Ydb
DECLARE $Ids0_1 Text(12) -- AnsiString
SET     $Ids0_1 = '___Value3___'u
DECLARE $Ids0_2 Text(12) -- AnsiString
SET     $Ids0_2 = '___Value4___'u

SELECT
	s.Id as Id
FROM
	Src s
WHERE
	s.CEnum IN ($Ids0_1, $Ids0_2)
LIMIT 1

-- YDB Ydb
DECLARE $Ids0_1 Text(12) -- AnsiString
SET     $Ids0_1 = '___Value3___'u

SELECT
	s.Id as Id
FROM
	Src s
WHERE
	(s.CEnum IN ($Ids0_1) OR s.CEnum IS NULL)
LIMIT 1

-- YDB Ydb
DECLARE $Ids0_1 Text(12) -- AnsiString
SET     $Ids0_1 = '___Value3___'u
DECLARE $Ids0_2 Text(12) -- AnsiString
SET     $Ids0_2 = '___Value2___'u

SELECT
	s.Id as Id
FROM
	Src s
WHERE
	s.CEnum IN ($Ids0_1, $Ids0_2)
LIMIT 1

-- YDB Ydb
DECLARE $Ids0_1 Text(12) -- AnsiString
SET     $Ids0_1 = '___Value2___'u

SELECT
	s.Id as Id
FROM
	Src s
WHERE
	(s.CEnum NOT IN ($Ids0_1) AND s.CEnum IS NOT NULL)
LIMIT 1

-- YDB Ydb
DECLARE $Ids0_1 Text(12) -- AnsiString
SET     $Ids0_1 = '___Value3___'u
DECLARE $Ids0_2 Text(12) -- AnsiString
SET     $Ids0_2 = '___Value2___'u

SELECT
	s.Id as Id
FROM
	Src s
WHERE
	(s.CEnum NOT IN ($Ids0_1, $Ids0_2) OR s.CEnum IS NULL)
LIMIT 1

