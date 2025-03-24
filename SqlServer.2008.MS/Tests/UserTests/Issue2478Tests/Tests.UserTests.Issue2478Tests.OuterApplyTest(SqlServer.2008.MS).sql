BeforeExecute
--  SqlServer.2008.MS SqlServer.2008

SELECT
	[p].[ParentID],
	CASE
		WHEN [c_2].[cond] IS NULL THEN 0
		ELSE [c_2].[c1]
	END
FROM
	[Parent] [p]
		OUTER APPLY (
			SELECT
				COUNT(*) as [cond],
				COUNT(*) as [c1]
			FROM
				[Child] [c_1]
			WHERE
				[c_1].[ParentID] = [p].[ParentID]
		) [c_2]

BeforeExecute
--  SqlServer.2008.MS SqlServer.2008

SELECT
	COUNT(*)
FROM
	[Parent] [t1]

