-- Informix.DB2 Informix
DECLARE @FirstName VarChar(27) -- String
SET     @FirstName = 'InsertOrReplaceColumnFilter'
DECLARE @LastName VarChar(8) -- String
SET     @LastName = 'whatever'
DECLARE @ID Integer(4) -- Int32
SET     @ID = 0

UPDATE
	TestInsertOrReplaceTable t1
SET
	FirstName = @FirstName,
	LastName = @LastName
WHERE
	t1.ID = @ID

-- Informix.DB2 Informix
DECLARE @ID Integer(4) -- Int32
SET     @ID = 0
DECLARE @FirstName VarChar(27) -- String
SET     @FirstName = 'InsertOrReplaceColumnFilter'
DECLARE @LastName VarChar(8) -- String
SET     @LastName = 'whatever'

INSERT INTO TestInsertOrReplaceTable
(
	ID,
	FirstName,
	LastName
)
VALUES
(
	@ID,
	@FirstName,
	@LastName
)

-- Informix.DB2 Informix
DECLARE @FirstName VarChar(27) -- String
SET     @FirstName = 'InsertOrReplaceColumnFilter'

SELECT FIRST 1
	x.ID,
	x.FirstName,
	x.LastName,
	x.MiddleName
FROM
	TestInsertOrReplaceTable x
WHERE
	x.FirstName = @FirstName

-- Informix.DB2 Informix
DECLARE @FirstName VarChar(27) -- String
SET     @FirstName = 'InsertOrReplaceColumnFilter'
DECLARE @LastName VarChar(8) -- String
SET     @LastName = 'whatever'
DECLARE @MiddleName VarChar(12) -- String
SET     @MiddleName = 'updated name'
DECLARE @ID Integer(4) -- Int32
SET     @ID = 0

UPDATE
	TestInsertOrReplaceTable t1
SET
	FirstName = @FirstName,
	LastName = @LastName,
	MiddleName = @MiddleName
WHERE
	t1.ID = @ID

-- Informix.DB2 Informix
DECLARE @FirstName VarChar(27) -- String
SET     @FirstName = 'InsertOrReplaceColumnFilter'

SELECT FIRST 1
	x.ID,
	x.FirstName,
	x.LastName,
	x.MiddleName
FROM
	TestInsertOrReplaceTable x
WHERE
	x.FirstName = @FirstName

