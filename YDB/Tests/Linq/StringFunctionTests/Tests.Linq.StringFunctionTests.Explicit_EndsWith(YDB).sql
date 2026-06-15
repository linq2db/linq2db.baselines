-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	Patient r
WHERE
	r.Diagnosis LIKE '%Persecution'u ESCAPE '~'s

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	Patient r
WHERE
	r.Diagnosis LIKE '%persecution'u ESCAPE '~'s

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	Patient r
WHERE
	r.Diagnosis ILIKE '%persecution'u ESCAPE '~'s

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	Patient r
WHERE
	r.Diagnosis ILIKE '%Persecution'u ESCAPE '~'s

