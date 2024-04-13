BeforeExecute
-- Access AccessOleDb

DELETE FROM
	[Person] [_]
WHERE
	[_].[PersonID] > 4

BeforeExecute
-- Access AccessOleDb (asynchronously)
DECLARE @FirstName VarWChar(4) -- String
SET     @FirstName = 'John'
DECLARE @LastName VarWChar(7) -- String
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
	@FirstName,
	@LastName,
	@Gender
)

BeforeExecute
-- Access AccessOleDb (asynchronously)

SELECT @@IDENTITY

BeforeExecute
-- Access AccessOleDb (asynchronously)

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
-- Access AccessOleDb

DELETE FROM
	[Person] [_]
WHERE
	[_].[PersonID] > 4

