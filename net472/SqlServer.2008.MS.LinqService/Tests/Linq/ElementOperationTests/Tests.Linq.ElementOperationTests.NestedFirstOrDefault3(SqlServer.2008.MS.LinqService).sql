BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t2].[ParentID]
FROM
	[Parent] [p]
		OUTER APPLY (
			SELECT TOP (1)
				[t1].[ParentID]
			FROM
				(
					SELECT DISTINCT
						[c_1].[ParentID]
					FROM
						[Child] [c_1]
					WHERE
						[p].[ParentID] = [c_1].[ParentID]
				) [t1]
		) [t2]

