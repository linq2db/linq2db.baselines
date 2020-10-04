﻿BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE [TestInsertOrReplaceTable]
(
	[ID]         INTEGER       NOT NULL,
	[FirstName]  NVarChar(255)     NULL,
	[LastName]   NVarChar(255)     NULL,
	[MiddleName] NVarChar(255)     NULL,

	CONSTRAINT [PK_TestInsertOrReplaceTable] PRIMARY KEY ([ID])
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @FirstName NVarChar(27) -- String
SET     @FirstName = 'InsertOrReplaceColumnFilter'
DECLARE @LastName NVarChar(8) -- String
SET     @LastName = 'whatever'
DECLARE @MiddleName NVarChar(15) -- String
SET     @MiddleName = 'som middle name'
DECLARE @ID  -- Int32
SET     @ID = 0

UPDATE
	[TestInsertOrReplaceTable]
SET
	[FirstName] = @FirstName,
	[LastName] = @LastName,
	[MiddleName] = @MiddleName
WHERE
	[TestInsertOrReplaceTable].[ID] = @ID

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @ID  -- Int32
SET     @ID = 0
DECLARE @FirstName NVarChar(27) -- String
SET     @FirstName = 'InsertOrReplaceColumnFilter'
DECLARE @LastName NVarChar(8) -- String
SET     @LastName = 'whatever'
DECLARE @MiddleName NVarChar(15) -- String
SET     @MiddleName = 'som middle name'

INSERT INTO [TestInsertOrReplaceTable]
(
	[ID],
	[FirstName],
	[LastName],
	[MiddleName]
)
VALUES
(
	@ID,
	@FirstName,
	@LastName,
	@MiddleName
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @FirstName_1 NVarChar(27) -- String
SET     @FirstName_1 = 'InsertOrReplaceColumnFilter'
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	[x].[ID],
	[x].[FirstName],
	[x].[LastName],
	[x].[MiddleName]
FROM
	[TestInsertOrReplaceTable] [x]
WHERE
	[x].[FirstName] = @FirstName_1
LIMIT @take

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @FirstName NVarChar(27) -- String
SET     @FirstName = 'InsertOrReplaceColumnFilter'
DECLARE @LastName NVarChar(8) -- String
SET     @LastName = 'whatever'
DECLARE @ID  -- Int32
SET     @ID = 0

UPDATE
	[TestInsertOrReplaceTable]
SET
	[FirstName] = @FirstName,
	[LastName] = @LastName
WHERE
	[TestInsertOrReplaceTable].[ID] = @ID

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @FirstName_1 NVarChar(27) -- String
SET     @FirstName_1 = 'InsertOrReplaceColumnFilter'
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	[x].[ID],
	[x].[FirstName],
	[x].[LastName],
	[x].[MiddleName]
FROM
	[TestInsertOrReplaceTable] [x]
WHERE
	[x].[FirstName] = @FirstName_1
LIMIT @take

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE [TestInsertOrReplaceTable]

