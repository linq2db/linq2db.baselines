-- YDB Ydb

INSERT INTO Person
(
	FirstName,
	LastName,
	Gender
)
VALUES
(
	'John'u,
	'Limonadovy'u,
	'M'u
)

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	Person c_1
WHERE
	c_1.LastName = 'Limonadovy'u

-- YDB Ydb

UPDATE
	Person
SET
	FirstName = 'Johnny'u
WHERE
	Person.LastName = 'Limonadovy'u

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	Person c_1
WHERE
	c_1.FirstName = 'Johnny'u AND c_1.LastName = 'Limonadovy'u

