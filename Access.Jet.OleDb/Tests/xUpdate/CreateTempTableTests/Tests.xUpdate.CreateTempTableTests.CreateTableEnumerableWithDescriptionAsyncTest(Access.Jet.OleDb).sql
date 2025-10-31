-- Access.Jet.OleDb AccessOleDb

DROP TABLE [TempTable]

-- Access.Jet.OleDb AccessOleDb

CREATE TABLE [TempTable]
(
	[Name] NVarChar(20) NOT NULL
)

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

-- Access.Jet.OleDb AccessOleDb

SELECT
	[t].[Name]
FROM
	[Person] [p]
		INNER JOIN [TempTable] [t] ON ([p].[FirstName] = [t].[Name])

-- Access.Jet.OleDb AccessOleDb

DROP TABLE [TempTable]

