-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	Patient p
WHERE
	p.Diagnosis LIKE '%Persecution'u ESCAPE '~'s AND p.PersonID = 2

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	Patient p
WHERE
	p.Diagnosis NOT LIKE '%Persecution'u ESCAPE '~'s AND
	p.PersonID = 2

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	Patient p
WHERE
	p.Diagnosis LIKE '%persecution'u ESCAPE '~'s AND p.PersonID = 2

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	Patient p
WHERE
	p.Diagnosis NOT LIKE '%persecution'u ESCAPE '~'s AND
	p.PersonID = 2

