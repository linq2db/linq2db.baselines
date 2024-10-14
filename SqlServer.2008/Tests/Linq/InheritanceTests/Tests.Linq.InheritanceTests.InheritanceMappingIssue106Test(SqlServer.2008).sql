BeforeExecute
-- SqlServer.2008

SELECT
	CASE
		WHEN [t1].[ChildID] = 21 THEN 1
		ELSE 0
	END,
	[t1].[ChildID],
	CASE
		WHEN [t1].[ChildID] = 11 THEN 1
		ELSE 0
	END
FROM
	[Child] [t1]
WHERE
	[t1].[ChildID] = 11 OR [t1].[ChildID] = 21

