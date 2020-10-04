BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @FirstName NVarChar(8) -- String
SET     @FirstName = 'Update14'
DECLARE @LastName NVarChar(8) -- String
SET     @LastName = 'whatever'
DECLARE @MiddleName NVarChar -- String
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
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @name NVarChar(8) -- String
SET     @name = 'Update14'
DECLARE @idx Int -- Int32
SET     @idx = 4

UPDATE
	[Person] [_]
SET
	[_].[LastName] = CStr(Len(?) + ?)
WHERE
	[_].[FirstName] LIKE 'Update14%'

BeforeExecute
-- Access.Odbc AccessODBC

SELECT
	Count(*)
FROM
	[Person] [_]
WHERE
	[_].[FirstName] LIKE 'Update14%'

BeforeExecute
-- Access.Odbc AccessODBC

DELETE FROM
	[Person] [_]
WHERE
	[_].[FirstName] LIKE 'Update14%'

