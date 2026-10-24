-- YDB Ydb
DECLARE $value Int32
SET     $value = 4

SELECT
	COUNT(*) as Count_1
FROM
	Src s
WHERE
	s.`Int` IS DISTINCT FROM $value

-- YDB Ydb
DECLARE $value Int32
SET     $value = 4

SELECT
	COUNT(*) as Count_1
FROM
	Src s
WHERE
	s.NullableInt IS DISTINCT FROM $value

-- YDB Ydb
DECLARE $value Int32
SET     $value = 4

SELECT
	COUNT(*) as Count_1
FROM
	Src s
WHERE
	s.`Int` IS NOT DISTINCT FROM $value

-- YDB Ydb
DECLARE $value Int32
SET     $value = 4

SELECT
	COUNT(*) as Count_1
FROM
	Src s
WHERE
	s.NullableInt IS NOT DISTINCT FROM $value

