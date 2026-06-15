-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	Src s
WHERE
	s.CEnum IS NULL

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	Src s
WHERE
	s.CEnum IS NOT NULL

