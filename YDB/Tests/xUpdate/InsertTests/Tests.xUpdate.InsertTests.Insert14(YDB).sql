-- YDB Ydb

DELETE FROM
	Person
WHERE
	Person.FirstName LIKE 'Insert14%'u ESCAPE '~'s

-- YDB Ydb

$CTE_1 = 	SELECT
		p.FirstName as FirstName
	FROM
		Person p
	WHERE
		p.PersonID = 1
;

INSERT INTO Person
(
	FirstName,
	LastName,
	Gender
)
VALUES
(
	'Insert14'u || Coalesce($CTE_1, ''u),
	'Shepard'u,
	'M'u
)

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	Person p
WHERE
	p.FirstName LIKE 'Insert14%'u ESCAPE '~'s

-- YDB Ydb

DELETE FROM
	Person
WHERE
	Person.FirstName LIKE 'Insert14%'u ESCAPE '~'s

