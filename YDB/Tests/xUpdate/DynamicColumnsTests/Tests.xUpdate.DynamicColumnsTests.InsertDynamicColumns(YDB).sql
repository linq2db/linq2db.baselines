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
	'The Dynamic'u,
	'M'u
)

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	Person c_1
WHERE
	c_1.FirstName = 'John'u AND c_1.LastName = 'The Dynamic'u

