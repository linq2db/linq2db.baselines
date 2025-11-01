-- Informix.DB2 Informix

INSERT INTO Person
(
	FirstName,
	LastName,
	Gender
)
VALUES
(
	'John',
	'The Dynamic',
	'M'
)

-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	Person c_1
WHERE
	c_1.FirstName = 'John' AND c_1.LastName = 'The Dynamic'

