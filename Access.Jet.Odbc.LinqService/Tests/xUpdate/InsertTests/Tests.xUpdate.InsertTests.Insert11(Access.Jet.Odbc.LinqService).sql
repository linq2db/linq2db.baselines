BeforeExecute
-- Access.Jet.Odbc AccessODBC (asynchronously)

SELECT
	MAX([t1].[PersonID])
FROM
	[Person] [t1]

BeforeExecute
-- Access.Jet.Odbc AccessODBC (asynchronously)
DECLARE @Gender NChar(1) -- StringFixedLength
SET     @Gender = 'M'
DECLARE @Name_FirstName NVarChar(2) -- String
SET     @Name_FirstName = 'fn'
DECLARE @Name_MiddleName NVarChar -- String
SET     @Name_MiddleName = NULL
DECLARE @Name_LastName NVarChar(2) -- String
SET     @Name_LastName = 'ln'

INSERT INTO [Person]
(
	[Gender],
	[FirstName],
	[MiddleName],
	[LastName]
)
VALUES
(
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Jet.Odbc AccessODBC (asynchronously)
DECLARE @id Int -- Int32
SET     @id = 4

SELECT TOP 2
	[p2].[PersonID],
	[p2].[Gender],
	[p2].[FirstName],
	[p2].[MiddleName],
	[p2].[LastName]
FROM
	[Person] [p2]
WHERE
	[p2].[PersonID] > ? OR [p2].[PersonID] = 0

