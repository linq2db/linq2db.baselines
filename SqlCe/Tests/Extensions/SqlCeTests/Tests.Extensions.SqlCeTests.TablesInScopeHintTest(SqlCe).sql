-- SqlCe

SELECT
	[p].[FirstName],
	[p].[PersonID] as [ID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p] WITH (Index(PK_Person), NoLock)
		CROSS JOIN [Child] [c_1] WITH (NoLock)
		CROSS JOIN [Child] [c_2] WITH (PagLock)
		LEFT JOIN [Parent] [a_Parent] WITH (PagLock) ON [c_2].[ParentID] = [a_Parent].[ParentID]
		CROSS JOIN [Parent] [p1] WITH (HoldLock)
		CROSS JOIN [Child] [c_3]
WHERE
	[c_1].[ParentID] = [p].[PersonID] AND
	[c_2].[ParentID] = [p].[PersonID] AND
	[a_Parent].[ParentID] > 0 AND
	[p1].[ParentID] = [p].[PersonID] AND
	[c_3].[ParentID] = [p].[PersonID]

