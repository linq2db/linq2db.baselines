BeforeExecute
-- Access.Jet.Odbc AccessODBC (asynchronously)

DELETE FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] > 4

BeforeExecute
-- Access.Jet.Odbc AccessODBC (asynchronously)
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
-- Access.Jet.Odbc AccessODBC (asynchronously)

SELECT @@IDENTITY

BeforeExecute
-- Access.Jet.Odbc AccessODBC (asynchronously)

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
-- Access.Jet.Odbc AccessODBC (asynchronously)

DELETE FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] > 4

