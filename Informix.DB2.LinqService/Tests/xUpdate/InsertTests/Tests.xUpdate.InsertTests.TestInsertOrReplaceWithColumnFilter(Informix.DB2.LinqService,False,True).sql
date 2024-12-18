﻿BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS TestInsertOrReplaceTable

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS TestInsertOrReplaceTable
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
	x.FirstName = @FirstName AND x.FirstName IS NOT NULL

BeforeExecute
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
	x.FirstName = @FirstName AND x.FirstName IS NOT NULL

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS TestInsertOrReplaceTable

