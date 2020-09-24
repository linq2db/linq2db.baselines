BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE TestInsertOrReplaceTable
(
	ID         Int           NOT NULL,
	FirstName  NVarChar(255)     NULL,
	LastName   NVarChar(255)     NULL,
	MiddleName NVarChar(255)     NULL,

	PRIMARY KEY (ID)
)

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
	TestInsertOrReplaceTable
SET
	TestInsertOrReplaceTable.FirstName = @FirstName,
	TestInsertOrReplaceTable.LastName = @LastName,
	TestInsertOrReplaceTable.MiddleName = @MiddleName
WHERE
	TestInsertOrReplaceTable.ID = @ID

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
DECLARE @FirstName_1 VarChar(27) -- String
SET     @FirstName_1 = 'InsertOrReplaceColumnFilter'

SELECT FIRST 1
	x.ID,
	x.FirstName,
	x.LastName,
	x.MiddleName
FROM
	TestInsertOrReplaceTable x
WHERE
	x.FirstName = @FirstName_1

BeforeExecute
-- Informix.DB2 Informix
DECLARE @FirstName VarChar(27) -- String
SET     @FirstName = 'InsertOrReplaceColumnFilter'
DECLARE @LastName VarChar(8) -- String
SET     @LastName = 'whatever'
DECLARE @ID Integer(4) -- Int32
SET     @ID = 0

UPDATE
	TestInsertOrReplaceTable
SET
	TestInsertOrReplaceTable.FirstName = @FirstName,
	TestInsertOrReplaceTable.LastName = @LastName
WHERE
	TestInsertOrReplaceTable.ID = @ID

BeforeExecute
-- Informix.DB2 Informix
DECLARE @FirstName_1 VarChar(27) -- String
SET     @FirstName_1 = 'InsertOrReplaceColumnFilter'

SELECT FIRST 1
	x.ID,
	x.FirstName,
	x.LastName,
	x.MiddleName
FROM
	TestInsertOrReplaceTable x
WHERE
	x.FirstName = @FirstName_1

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE TestInsertOrReplaceTable

