BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [TestInsertOrReplaceTable]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

CREATE TABLE [TestInsertOrReplaceTable]
(
	[ID]         Int           NOT NULL,
	[FirstName]  NVarChar(255)     NULL,
	[LastName]   NVarChar(255)     NULL,
	[MiddleName] NVarChar(255)     NULL,

	CONSTRAINT [PK_TestInsertOrReplaceTable] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @ID Integer -- Int32
SET     @ID = 123
DECLARE @FirstName VarWChar(4) -- String
SET     @FirstName = 'John'

INSERT INTO [TestInsertOrReplaceTable]
(
	[ID],
	[FirstName]
)
VALUES
(
	@ID,
	@FirstName
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	COUNT(*)
FROM
	[TestInsertOrReplaceTable] [x]
WHERE
	[x].[ID] = 123 AND [x].[FirstName] = 'John'

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [TestInsertOrReplaceTable]

