BeforeExecute
-- Access AccessOleDb

SELECT
	Max([_].[PersonID])
FROM
	[Person] [_]

BeforeExecute
-- Access AccessOleDb
DECLARE @id Integer -- Int32
SET     @id = 4

Person_SelectByKey

BeforeExecute
-- Access AccessOleDb
DECLARE @id Integer -- Int32
SET     @id = 4

SELECT
	[_].[FirstName],
	[_].[PersonID],
	[_].[LastName],
	[_].[MiddleName],
	[_].[Gender]
FROM
	[Person] [_]
WHERE
	[_].[PersonID] = @id

