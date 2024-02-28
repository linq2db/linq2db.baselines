BeforeExecute
-- SqlCe

SELECT
	[p_1].[FirstName],
	[p_1].[PersonID],
	[p_1].[LastName],
	[p_1].[MiddleName],
	[p_1].[Gender]
FROM
	(
		SELECT
			[p].[PersonID],
			[p].[FirstName],
			[p].[LastName],
			[p].[MiddleName],
			[p].[Gender]
		FROM
			[Person] [p] WITH (Index(PK_Person), NoLock),
			[Child] [c_1] WITH (NoLock)
		WHERE
			[c_1].[ParentID] = [p].[PersonID]
	) [p_1]
		CROSS JOIN [Parent] [p1] WITH (HoldLock)
		CROSS JOIN [Child] [c_2] WITH (PagLock)
		LEFT JOIN [Parent] [a_Parent] WITH (PagLock) ON [c_2].[ParentID] = [a_Parent].[ParentID],
	[Child] [c_3]
WHERE
	[c_3].[ParentID] = [p_1].[PersonID] AND
	[c_2].[ParentID] = [p_1].[PersonID] AND
	[a_Parent].[ParentID] > 0 AND
	[p1].[ParentID] = [p_1].[PersonID]

