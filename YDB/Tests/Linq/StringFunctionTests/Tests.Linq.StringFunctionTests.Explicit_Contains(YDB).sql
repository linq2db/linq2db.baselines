-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	Patient r
WHERE
	r.Diagnosis LIKE '%Paranoid%'u ESCAPE '~'s

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	Patient r
WHERE
	r.Diagnosis LIKE '%paranoid%'u ESCAPE '~'s

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	Patient r
WHERE
	r.Diagnosis ILIKE '%paranoid%'u ESCAPE '~'s

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	Patient r
WHERE
	r.Diagnosis ILIKE '%Paranoid%'u ESCAPE '~'s

