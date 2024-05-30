BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [TempTable]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [TempTable]
(
	[Name] NVarChar(20) NOT NULL
)

BeforeExecute
-- Access.Odbc AccessODBC
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

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	[t].[Name]
FROM
	[Person] [p]
		INNER JOIN [TempTable] [t] ON ([p].[FirstName] = [t].[Name])

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [TempTable]

