BeforeExecute
-- SQLite.MS SQLite
DECLARE @p4  -- Int32
SET     @p4 = NULL

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	@p4 <= [p].[PersonID] AND [p].[PersonID] <= @p4 OR
	@p4 <= [p].[PersonID] AND [p].[PersonID] <= @p4

