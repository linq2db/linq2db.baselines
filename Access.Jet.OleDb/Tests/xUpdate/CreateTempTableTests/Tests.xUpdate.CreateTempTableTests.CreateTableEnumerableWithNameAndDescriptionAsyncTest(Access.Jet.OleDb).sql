BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)

DROP TABLE [TempTable]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)

CREATE TABLE [TempTable]
(
	[Name] NVarChar(20) NOT NULL
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)
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
-- Access.Jet.OleDb AccessOleDb (asynchronously)

SELECT
	[t].[Name]
FROM
	[Person] [p]
		INNER JOIN [TempTable] [t] ON ([p].[FirstName] = [t].[Name])

BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)

DROP TABLE [TempTable]

