-- SqlServer.2012.MS SqlServer.2012

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender]
FROM
	[Person] [t1]

-- SqlServer.2012.MS SqlServer.2012

SELECT TOP (1)
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

