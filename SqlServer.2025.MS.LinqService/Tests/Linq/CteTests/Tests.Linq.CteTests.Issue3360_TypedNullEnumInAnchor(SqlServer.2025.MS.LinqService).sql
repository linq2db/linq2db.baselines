BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022 (asynchronously)

WITH [cte] ([Id], [Value_1])
AS
(
	SELECT
		[p].[Id],
		CAST(NULL AS VARCHAR(10))
	FROM
		[Issue3360NullInAnchor] [p]
	UNION ALL
	SELECT
		[p_1].[Id],
		CAST(N'THIS_IS_ONE' AS VARCHAR(10))
	FROM
		[Issue3360NullInAnchor] [p_1]
)
SELECT
	[node].[Id],
	[node].[Value_1]
FROM
	[cte] [node]

