BeforeExecute
-- Access AccessOleDb
DECLARE @FirstName VarWChar(8) -- String
SET     @FirstName = 'Update14'
DECLARE @LastName VarWChar(8) -- String
SET     @LastName = 'whatever'
DECLARE @MiddleName VarWChar -- String
SET     @MiddleName = NULL
DECLARE @Gender Char(1) -- AnsiStringFixedLength
SET     @Gender = 'M'

INSERT INTO [Person]
(
	[FirstName],
	[LastName],
	[MiddleName],
	[Gender]
)
VALUES
(
	@FirstName,
	@LastName,
	@MiddleName,
	@Gender
)

BeforeExecute
-- Access AccessOleDb
DECLARE @name VarWChar(8) -- String
SET     @name = 'Update14'
DECLARE @idx Integer -- Int32
SET     @idx = 4

UPDATE
	[Person] [_]
SET
	[_].[LastName] = CStr(Len(@name) + @idx)
WHERE
	[_].[FirstName] LIKE 'Update14%'

BeforeExecute
-- Access AccessOleDb

DELETE FROM
	[Person] [_]
WHERE
	[_].[FirstName] LIKE 'Update14%'

