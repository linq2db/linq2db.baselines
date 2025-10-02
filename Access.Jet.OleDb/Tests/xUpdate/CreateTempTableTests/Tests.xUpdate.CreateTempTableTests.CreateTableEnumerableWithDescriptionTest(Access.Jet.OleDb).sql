BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [TempTable]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

CREATE TABLE [TempTable]
(
	[Name] NVarChar(20) NOT NULL,

	CONSTRAINT [PK_TempTable] PRIMARY KEY CLUSTERED ([Name])
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @Name VarWChar(4) -- String
SET     @Name = 'John'

INSERT INTO [TempTable]
(
	[Name]
)
VALUES
(
	@Name
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	[t].[Name]
FROM
	[Person] [p]
		INNER JOIN [TempTable] [t] ON ([p].[FirstName] = [t].[Name])

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [TempTable]

