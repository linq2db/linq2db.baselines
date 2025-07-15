BeforeExecute
-- Access.Ace.Odbc AccessODBC

DELETE FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] > 4

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @FirstName NVarChar(4) -- String
SET     @FirstName = 'John'
DECLARE @LastName NVarChar(7) -- String
SET     @LastName = 'Shepard'
DECLARE @Gender Char(1) -- AnsiStringFixedLength
SET     @Gender = 'M'

INSERT INTO [Person]
(
	[FirstName],
	[LastName],
	[Gender]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT @@IDENTITY

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT TOP 2
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[FirstName] = 'John' AND [p].[LastName] = 'Shepard'

BeforeExecute
-- Access.Ace.Odbc AccessODBC

DELETE FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] > 4

