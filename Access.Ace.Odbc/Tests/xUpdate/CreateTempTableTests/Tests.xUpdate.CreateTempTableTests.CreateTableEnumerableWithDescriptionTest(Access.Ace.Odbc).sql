BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [TempTable]

BeforeExecute
-- Access.Ace.Odbc AccessODBC

CREATE TABLE [TempTable]
(
	[Name] NVarChar(20) NOT NULL,

	CONSTRAINT [PK_TempTable] PRIMARY KEY CLUSTERED ([Name])
)

BeforeExecute
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

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[t].[Name]
FROM
	[Person] [p]
		INNER JOIN [TempTable] [t] ON ([p].[FirstName] = [t].[Name])

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DROP TABLE [TempTable]

