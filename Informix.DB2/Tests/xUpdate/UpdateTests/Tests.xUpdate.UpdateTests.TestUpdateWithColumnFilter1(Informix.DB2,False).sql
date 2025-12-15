-- Informix.DB2 Informix
DECLARE @FirstName VarChar(25) -- String
SET     @FirstName = 'UpdateColumnFilterUpdated'
DECLARE @LastName VarChar(8) -- String
SET     @LastName = 'whatever'
DECLARE @MiddleName VarChar(15) -- String
SET     @MiddleName = 'som middle name'
DECLARE @Gender Char(1) -- StringFixedLength
SET     @Gender = 'M'

INSERT INTO Person
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
DECLARE @FirstName VarChar(25) -- String
SET     @FirstName = 'UpdateColumnFilterUpdated'

SELECT FIRST 1
	x.FirstName,
	x.PersonID,
	x.LastName,
	x.MiddleName,
	x.Gender
FROM
	Person x
WHERE
	x.FirstName = @FirstName

-- Informix.DB2 Informix
DECLARE @FirstName VarChar(25) -- String
SET     @FirstName = 'UpdateColumnFilterUpdated'
DECLARE @LastName VarChar(8) -- String
SET     @LastName = 'whatever'
DECLARE @Gender Char(1) -- StringFixedLength
SET     @Gender = 'M'
DECLARE @ID Integer(4) -- Int32
SET     @ID = 5

UPDATE
	Person t1
SET
	FirstName = @FirstName,
	LastName = @LastName,
	Gender = @Gender
WHERE
	t1.PersonID = @ID

-- Informix.DB2 Informix
DECLARE @FirstName VarChar(25) -- String
SET     @FirstName = 'UpdateColumnFilterUpdated'

SELECT FIRST 1
	x.FirstName,
	x.PersonID,
	x.LastName,
	x.MiddleName,
	x.Gender
FROM
	Person x
WHERE
	x.FirstName = @FirstName

