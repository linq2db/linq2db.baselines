BeforeExecute
-- SqlServer.2017.MS SqlServer.2017 (asynchronously)

UPDATE
	[u]
SET
	[u].[col1] = [x].[col1],
	[u].[col2] = [x].[col2],
	[u].[col3] = Replace([x].[col3], N'auth.', N''),
	[u].[col4] = [x].[col4],
	[u].[col5] = IIF([x].[col3] = N'empty', N'1', N'0'),
	[u].[col6] = IIF([x].[col3] = N'empty', N'', CAST([y1].[id] AS NVarChar(11)))
FROM
	[gt_s_one_target] [u],
	[gt_s_one] [x]
		LEFT JOIN [access_mode] [y1] ON Upper(Replace([x].[col3], N'auth.', N'')) = Upper([y1].[code]) OR [x].[col3] IS NULL AND [y1].[code] IS NULL
WHERE
	[x].[id] = [u].[id]

