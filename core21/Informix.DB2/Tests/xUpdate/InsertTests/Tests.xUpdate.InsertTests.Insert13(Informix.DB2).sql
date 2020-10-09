BeforeExecute
-- Informix.DB2 Informix

SELECT 
	Max(t.PersonID)
FROM
	Person t

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
	'FirstName',
	'LastName',
	'M'
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @id Integer(4) -- Int32
SET     @id = 4

DELETE FROM
	Person
WHERE
	Person.PersonID > @id

