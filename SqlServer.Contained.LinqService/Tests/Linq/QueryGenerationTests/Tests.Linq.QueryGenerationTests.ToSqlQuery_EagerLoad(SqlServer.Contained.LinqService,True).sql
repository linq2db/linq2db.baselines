BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = 2

BeforeExecute
-- SqlServer.Contained SqlServer.2019 (asynchronously)
DECLARE @id Int -- Int32
SET     @id = 2

SELECT TOP (2)
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = @id

