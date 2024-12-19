BeforeExecute
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
DECLARE @ID Int -- Int32
SET     @ID = 123
DECLARE @FirstName NVarChar(4) -- String
SET     @FirstName = 'John'

INSERT INTO [TestInsertOrReplaceTable]
(
	[ID],
	[FirstName]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	COUNT(*)
FROM
	[TestInsertOrReplaceTable] [x]
WHERE
	[x].[ID] = 123 AND [x].[FirstName] = 'John'

BeforeExecute
-- Access.Jet.Odbc AccessODBC

DROP TABLE [TestInsertOrReplaceTable]

