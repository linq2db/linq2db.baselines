BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022 (asynchronously)

SELECT
	[c_1].[ParentID],
	NULL
FROM
	[Child] [c_1]
UNION ALL
SELECT
	NULL,
	[c_2].[Value1]
FROM
	[Parent] [c_2]

