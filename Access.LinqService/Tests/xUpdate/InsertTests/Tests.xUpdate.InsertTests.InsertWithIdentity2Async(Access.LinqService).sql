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
-- Access AccessOleDb

DELETE FROM
	[Person] [_]
WHERE
	[_].[PersonID] > 4

