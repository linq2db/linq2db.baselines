BeforeExecute
-- Informix.DB2 Informix

SELECT
	MAX(t1.PersonID)
FROM
	Person t1

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Gender VarChar(1) -- String
SET     @Gender = 'M'
DECLARE @Name_FirstName VarChar(2) -- String
SET     @Name_FirstName = 'fn'
DECLARE @Name_MiddleName VarChar -- String
SET     @Name_MiddleName = ''
DECLARE @Name_LastName VarChar(2) -- String
SET     @Name_LastName = 'ln'

INSERT INTO Person
(
	Gender,
	FirstName,
	MiddleName,
	LastName
)
VALUES
(
	@Gender,
	@Name_FirstName,
	@Name_MiddleName,
	@Name_LastName
)

BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 2
	p.PersonID,
	p.FirstName,
	p.MiddleName,
	p.LastName,
	p.Gender
FROM
	Person p
WHERE
	p.PersonID > 4

BeforeExecute
-- Informix.DB2 Informix

DELETE FROM
	Person
WHERE
	Person.PersonID > 4

