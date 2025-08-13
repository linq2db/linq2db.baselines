BeforeExecute
-- Informix.DB2 Informix
DECLARE @FirstName VarChar(27) -- String
SET     @FirstName = 'InsertOrReplaceColumnFilter'
DECLARE @LastName VarChar(8) -- String
SET     @LastName = 'whatever'
DECLARE @MiddleName VarChar(15) -- String
SET     @MiddleName = 'som middle name'
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

BeforeExecute
-- Informix.DB2 Informix
DECLARE @ID Integer(4) -- Int32
SET     @ID = 0
DECLARE @FirstName VarChar(27) -- String
SET     @FirstName = 'InsertOrReplaceColumnFilter'
DECLARE @LastName VarChar(8) -- String
SET     @LastName = 'whatever'
DECLARE @MiddleName VarChar(15) -- String
SET     @MiddleName = 'som middle name'

INSERT INTO TestInsertOrReplaceTable
(
	ID,
	FirstName,
	LastName,
	MiddleName
)
VALUES
(
	@ID,
	@FirstName,
	@LastName,
	@MiddleName
)

BeforeExecute
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

BeforeExecute
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

BeforeExecute
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

