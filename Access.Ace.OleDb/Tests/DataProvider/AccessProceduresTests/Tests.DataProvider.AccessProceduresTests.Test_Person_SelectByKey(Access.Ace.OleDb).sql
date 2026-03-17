-- Access.Ace.OleDb AccessOleDb

SELECT
	MAX([t1].[PersonID])
FROM
	[Person] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @id Integer -- Int32
SET     @id = 4

Person_SelectByKey

-- Access.Ace.OleDb AccessOleDb
DECLARE @id Integer -- Int32
SET     @id = 4

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] = @id

