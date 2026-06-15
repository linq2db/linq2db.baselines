-- YDB Ydb

SELECT
	p.FirstName as FirstName
FROM
	Person p
WHERE
	p.PersonID = 1
LIMIT 2

-- YDB Ydb
DECLARE $nameToCheck Text(4) -- String
SET     $nameToCheck = 'Joh%'u

SELECT
	COUNT(*) as Count_1
FROM
	Person p
WHERE
	p.FirstName LIKE $nameToCheck ESCAPE '~'s AND p.PersonID = 1

-- YDB Ydb
DECLARE $nameToCheck Text(4) -- String
SET     $nameToCheck = 'Joh%'u

SELECT
	COUNT(*) as Count_1
FROM
	Person p
WHERE
	p.FirstName NOT LIKE $nameToCheck ESCAPE '~'s AND p.PersonID = 1

-- YDB Ydb
DECLARE $nameToCheck Text(4) -- String
SET     $nameToCheck = 'JOH%'u

SELECT
	COUNT(*) as Count_1
FROM
	Person p
WHERE
	p.FirstName LIKE $nameToCheck ESCAPE '~'s AND p.PersonID = 1

-- YDB Ydb
DECLARE $nameToCheck Text(4) -- String
SET     $nameToCheck = 'JOH%'u

SELECT
	COUNT(*) as Count_1
FROM
	Person p
WHERE
	p.FirstName NOT LIKE $nameToCheck ESCAPE '~'s AND p.PersonID = 1

