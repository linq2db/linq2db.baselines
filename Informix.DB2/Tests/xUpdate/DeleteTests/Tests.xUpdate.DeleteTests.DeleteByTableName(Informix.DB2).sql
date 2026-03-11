-- Informix.DB2 Informix
DECLARE @FirstName VarChar(6) -- String
SET     @FirstName = 'Steven'
DECLARE @LastName VarChar(4) -- String
SET     @LastName = 'King'
DECLARE @MiddleName VarChar -- String
SET     @MiddleName = NULL
DECLARE @Gender Char(1) -- StringFixedLength
SET     @Gender = 'M'

INSERT INTO xxPerson
(
	FirstName,
	LastName,
	MiddleName,
	Gender
)
VALUES
(
	@FirstName,
	@LastName,
	@MiddleName,
	@Gender
)

-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	xxPerson t1

-- Informix.DB2 Informix

SELECT FIRST 2
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	xxPerson t1

-- Informix.DB2 Informix
DECLARE @ID Integer(4) -- Int32
SET     @ID = 1

DELETE FROM
	xxPerson
WHERE
	xxPerson.PersonID = @ID

-- Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	xxPerson t1

