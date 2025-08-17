BeforeExecute
-- Sybase.Managed Sybase
DECLARE @id Integer -- Int32
SET     @id = 2

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = @id

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)
DECLARE @id Integer -- Int32
SET     @id = 2

SELECT TOP 2
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = @id

