BeforeExecute
-- Access AccessOleDb
DECLARE @FirstName VarWChar(4) -- String
SET     @FirstName = 'John'
DECLARE @LastName VarWChar(10) -- String
SET     @LastName = 'Limonadovy'
DECLARE @Gender WChar(1) -- StringFixedLength
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
-- Access AccessOleDb

SELECT
	Count(*)
FROM
	[Person] [c_1]
WHERE
	[c_1].[LastName] = 'Limonadovy'

BeforeExecute
-- Access AccessOleDb
DECLARE @FirstName VarWChar(6) -- String
SET     @FirstName = 'Johnny'

UPDATE
	[Person] [c_1]
SET
	[c_1].[FirstName] = @FirstName
WHERE
	[c_1].[LastName] = 'Limonadovy'

BeforeExecute
-- Access AccessOleDb

SELECT
	Count(*)
FROM
	[Person] [c_1]
WHERE
	[c_1].[FirstName] = 'Johnny' AND [c_1].[LastName] = 'Limonadovy'

