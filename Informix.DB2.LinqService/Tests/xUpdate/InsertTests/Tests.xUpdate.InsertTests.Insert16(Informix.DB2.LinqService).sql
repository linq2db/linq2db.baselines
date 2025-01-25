BeforeExecute
-- Informix.DB2 Informix

DELETE FROM
	Person
WHERE
	Person.FirstName LIKE 'Insert16%' ESCAPE '~'

BeforeExecute
-- Informix.DB2 Informix
DECLARE @name VarChar(8) -- String
SET     @name = 'Insert16'
DECLARE @idx Integer(4) -- Int32
SET     @idx = 4

INSERT INTO Person
(
	FirstName,
	LastName,
	Gender
)
VALUES
(
	'Insert16',
	To_Char(CHAR_LENGTH(@name) + @idx),
	'M'
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	COUNT(*)
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

