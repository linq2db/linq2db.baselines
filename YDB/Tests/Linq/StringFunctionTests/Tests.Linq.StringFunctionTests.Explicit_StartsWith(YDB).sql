-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	Patient r
WHERE
	r.Diagnosis LIKE 'Hall%'u ESCAPE '~'s

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	Patient r
WHERE
	r.Diagnosis LIKE 'hall%'u ESCAPE '~'s

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	Patient r
WHERE
	r.Diagnosis ILIKE 'hall%'u ESCAPE '~'s

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	Patient r
WHERE
	r.Diagnosis ILIKE 'Hall%'u ESCAPE '~'s

