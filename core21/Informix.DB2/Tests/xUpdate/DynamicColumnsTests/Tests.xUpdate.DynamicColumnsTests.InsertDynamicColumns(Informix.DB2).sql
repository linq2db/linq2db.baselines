BeforeExecute
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

BeforeExecute
-- Informix.DB2 Informix

DELETE FROM
	Person
WHERE
	Person.LastName = 'The Dynamic'

