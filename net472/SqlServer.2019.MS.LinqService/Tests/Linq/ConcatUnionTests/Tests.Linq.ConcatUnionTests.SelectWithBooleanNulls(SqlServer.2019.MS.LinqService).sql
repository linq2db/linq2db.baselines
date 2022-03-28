BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT
	IIF(EXISTS(
		SELECT
			*
		FROM
			[Child] [t1]
	), 1, 0),
	IIF([x].[ParentID] <> 0, 1, 0)
FROM
	[Parent] [x]
UNION ALL
SELECT
	IIF(EXISTS(
		SELECT
			*
		FROM
			[Child] [t2]
	), 1, 0),
	NULL
FROM
	[Parent] [x_1]

