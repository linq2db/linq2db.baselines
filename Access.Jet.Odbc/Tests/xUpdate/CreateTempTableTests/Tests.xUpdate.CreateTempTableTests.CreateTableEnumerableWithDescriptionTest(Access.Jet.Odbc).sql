-- Access.Jet.Odbc AccessODBC

DROP TABLE [TempTable]

-- Access.Jet.Odbc AccessODBC

CREATE TABLE [TempTable]
(
	[Name] NVarChar(20) NOT NULL
)

-- Access.Jet.Odbc AccessODBC
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

-- Access.Jet.Odbc AccessODBC

SELECT
	[t].[Name]
FROM
	[Person] [p]
		INNER JOIN [TempTable] [t] ON ([p].[FirstName] = [t].[Name])

-- Access.Jet.Odbc AccessODBC

DROP TABLE [TempTable]

