﻿BeforeExecute
-- Access AccessOleDb

CREATE TABLE [TestInsertOrReplaceTable]
(
	[ID]         Int           NOT NULL,
	[FirstName]  NVarChar(255)     NULL,
	[LastName]   NVarChar(255)     NULL,
	[MiddleName] NVarChar(255)     NULL,

	CONSTRAINT [PK_TestInsertOrReplaceTable] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- Access AccessOleDb
DECLARE @FirstName VarWChar(27) -- String
SET     @FirstName = 'InsertOrReplaceColumnFilter'
DECLARE @LastName VarWChar(8) -- String
SET     @LastName = 'whatever'
DECLARE @MiddleName VarWChar(15) -- String
SET     @MiddleName = 'som middle name'
DECLARE @ID Integer -- Int32
SET     @ID = 0

UPDATE
	[TestInsertOrReplaceTable] [t1]
SET
	[t1].[FirstName] = @FirstName,
	[t1].[LastName] = @LastName,
	[t1].[MiddleName] = @MiddleName
WHERE
	[t1].[ID] = @ID

BeforeExecute
-- Access AccessOleDb
DECLARE @ID Integer -- Int32
SET     @ID = 0
DECLARE @FirstName VarWChar(27) -- String
SET     @FirstName = 'InsertOrReplaceColumnFilter'
DECLARE @LastName VarWChar(8) -- String
SET     @LastName = 'whatever'
DECLARE @MiddleName VarWChar(15) -- String
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
-- Access AccessOleDb
DECLARE @FirstName_1 VarWChar(27) -- String
SET     @FirstName_1 = 'InsertOrReplaceColumnFilter'

SELECT TOP 1 
	[x].[ID], 
	[x].[FirstName], 
	[x].[LastName], 
	[x].[MiddleName]
FROM
	[TestInsertOrReplaceTable] [x]
WHERE
	[x].[FirstName] = @FirstName_1

BeforeExecute
-- Access AccessOleDb
DECLARE @FirstName VarWChar(27) -- String
SET     @FirstName = 'InsertOrReplaceColumnFilter'
DECLARE @LastName VarWChar(8) -- String
SET     @LastName = 'whatever'
DECLARE @MiddleName VarWChar(12) -- String
SET     @MiddleName = 'updated name'
DECLARE @ID Integer -- Int32
SET     @ID = 0

UPDATE
	[TestInsertOrReplaceTable] [t1]
SET
	[t1].[FirstName] = @FirstName,
	[t1].[LastName] = @LastName,
	[t1].[MiddleName] = @MiddleName
WHERE
	[t1].[ID] = @ID

BeforeExecute
-- Access AccessOleDb
DECLARE @FirstName_1 VarWChar(27) -- String
SET     @FirstName_1 = 'InsertOrReplaceColumnFilter'

SELECT TOP 1 
	[x].[ID], 
	[x].[FirstName], 
	[x].[LastName], 
	[x].[MiddleName]
FROM
	[TestInsertOrReplaceTable] [x]
WHERE
	[x].[FirstName] = @FirstName_1

BeforeExecute
-- Access AccessOleDb

DROP TABLE [TestInsertOrReplaceTable]

