BeforeExecute
-- Access.Odbc AccessODBC (asynchronously)

DROP TABLE [TempTable]

BeforeExecute
-- Access.Odbc AccessODBC (asynchronously)

CREATE TABLE [TempTable]
(
	[Name] NVarChar(20) NOT NULL
)

BeforeExecute
-- Access.Odbc AccessODBC (asynchronously)
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
-- Access.Odbc AccessODBC (asynchronously)

SELECT
	[t].[Name]
FROM
	[Person] [p]
		INNER JOIN [TempTable] [t] ON ([p].[FirstName] = [t].[Name])

BeforeExecute
-- Access.Odbc AccessODBC (asynchronously)

DROP TABLE [TempTable]

