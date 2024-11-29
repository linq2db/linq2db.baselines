BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	IIF(EXISTS(
		SELECT
			1
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
			1
		FROM
			[Child] [t2]
	), 1, 0),
	NULL
FROM
	[Parent] [x_1]

