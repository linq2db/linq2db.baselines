﻿BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [TestInsertOrReplaceTable]

BeforeExecute
-- Access.Jet.Odbc AccessODBC

CREATE TABLE [TestInsertOrReplaceTable]
(
	[ID]         Int           NOT NULL,
	[FirstName]  NVarChar(255)     NULL,
	[LastName]   NVarChar(255)     NULL,
	[MiddleName] NVarChar(255)     NULL,

	CONSTRAINT [PK_TestInsertOrReplaceTable] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @FirstName NVarChar(27) -- String
SET     @FirstName = 'InsertOrReplaceColumnFilter'
DECLARE @LastName NVarChar(8) -- String
SET     @LastName = 'whatever'
DECLARE @ID  -- Int32
SET     @ID = 0

UPDATE
	[TestInsertOrReplaceTable] [t1]
SET
	[t1].[FirstName] = ?,
	[t1].[LastName] = ?
WHERE
	[t1].[ID] = ?

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @ID  -- Int32
SET     @ID = 0
DECLARE @FirstName NVarChar(27) -- String
SET     @FirstName = 'InsertOrReplaceColumnFilter'
DECLARE @LastName NVarChar(8) -- String
SET     @LastName = 'whatever'

INSERT INTO [TestInsertOrReplaceTable]
(
	[ID],
	[FirstName],
	[LastName]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @FirstName NVarChar(27) -- String
SET     @FirstName = 'InsertOrReplaceColumnFilter'

SELECT TOP 1
	[x].[ID],
	[x].[FirstName],
	[x].[LastName],
	[x].[MiddleName]
FROM
	[TestInsertOrReplaceTable] [x]
WHERE
	[x].[FirstName] = ?

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @FirstName NVarChar(27) -- String
SET     @FirstName = 'InsertOrReplaceColumnFilter'
DECLARE @LastName NVarChar(8) -- String
SET     @LastName = 'whatever'
DECLARE @MiddleName NVarChar(12) -- String
SET     @MiddleName = 'updated name'
DECLARE @ID  -- Int32
SET     @ID = 0

UPDATE
	[TestInsertOrReplaceTable] [t1]
SET
	[t1].[FirstName] = ?,
	[t1].[LastName] = ?,
	[t1].[MiddleName] = ?
WHERE
	[t1].[ID] = ?

BeforeExecute
-- Access.Jet.Odbc AccessODBC
DECLARE @FirstName NVarChar(27) -- String
SET     @FirstName = 'InsertOrReplaceColumnFilter'

SELECT TOP 1
	[x].[ID],
	[x].[FirstName],
	[x].[LastName],
	[x].[MiddleName]
FROM
	[TestInsertOrReplaceTable] [x]
WHERE
	[x].[FirstName] = ?

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [TestInsertOrReplaceTable]

