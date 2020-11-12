BeforeExecute
-- Informix.DB2 Informix

DELETE FROM
	Person
WHERE
	Person.FirstName LIKE 'Insert16%' ESCAPE '~'

BeforeExecute
-- Informix.DB2 Informix
DECLARE @idx Integer(4) -- Int32
SET     @idx = 12

INSERT INTO Person
(
	FirstName,
	LastName,
	Gender
)
VALUES
(
	'Insert16',
	To_Char(@idx),
	'M'
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	Count(*)
FROM
	Person t1
WHERE
	t1.FirstName LIKE 'Insert16%' ESCAPE '~'

BeforeExecute
-- Informix.DB2 Informix

DELETE FROM
	Person
WHERE
	Person.FirstName LIKE 'Insert16%' ESCAPE '~'

