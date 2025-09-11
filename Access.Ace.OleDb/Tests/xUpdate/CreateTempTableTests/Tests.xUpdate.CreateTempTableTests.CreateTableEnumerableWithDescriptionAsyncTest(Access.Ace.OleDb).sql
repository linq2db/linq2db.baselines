BeforeExecute
-- Access.Ace.OleDb AccessOleDb (asynchronously)

DROP TABLE [TempTable]

BeforeExecute
-- Access.Ace.OleDb AccessOleDb (asynchronously)

CREATE TABLE [TempTable]
(
	[Name] NVarChar(20) NOT NULL,

	CONSTRAINT [PK_TempTable] PRIMARY KEY CLUSTERED ([Name])
)

BeforeExecute
-- Access.Ace.OleDb AccessOleDb (asynchronously)
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
-- Access.Ace.OleDb AccessOleDb (asynchronously)

SELECT
	[t].[Name]
FROM
	[Person] [p]
		INNER JOIN [TempTable] [t] ON ([p].[FirstName] = [t].[Name])

BeforeExecute
-- Access.Ace.OleDb AccessOleDb (asynchronously)

DROP TABLE [TempTable]

