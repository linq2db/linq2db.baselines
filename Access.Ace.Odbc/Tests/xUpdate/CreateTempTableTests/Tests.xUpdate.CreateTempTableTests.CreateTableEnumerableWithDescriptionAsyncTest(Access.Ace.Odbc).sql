-- Access.Ace.Odbc AccessODBC

DROP TABLE [TempTable]

-- Access.Ace.Odbc AccessODBC

CREATE TABLE [TempTable]
(
	[Name] NVarChar(20) NOT NULL
)

-- Access.Ace.Odbc AccessODBC
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'John'

INSERT INTO [TempTable]
(
	[Name]
)
VALUES
(
	?
)

-- Access.Ace.Odbc AccessODBC

SELECT
	[t].[Name]
FROM
	[Person] [p]
		INNER JOIN [TempTable] [t] ON ([p].[FirstName] = [t].[Name])

-- Access.Ace.Odbc AccessODBC

DROP TABLE [TempTable]

