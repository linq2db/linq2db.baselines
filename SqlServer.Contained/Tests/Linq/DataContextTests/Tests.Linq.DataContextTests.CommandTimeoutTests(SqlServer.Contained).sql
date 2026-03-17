-- SqlServer.Contained SqlServer.2019

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

-- SqlServer.Contained SqlServer.2019

SELECT TOP (1)
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

