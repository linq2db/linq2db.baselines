-- Access.Ace.OleDb AccessOleDb

DROP TABLE [TempTable]

-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [TempTable]
(
	[Name] NVarChar(20) NOT NULL
)

-- Access.Ace.OleDb AccessOleDb
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

-- Access.Ace.OleDb AccessOleDb

SELECT
	[t].[Name]
FROM
	[Person] [p]
		INNER JOIN [TempTable] [t] ON ([p].[FirstName] = [t].[Name])

-- Access.Ace.OleDb AccessOleDb

DROP TABLE [TempTable]

