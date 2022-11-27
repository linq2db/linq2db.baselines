BeforeExecute
-- SqlServer.2017

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

BeforeExecute
-- SqlServer.2017
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

