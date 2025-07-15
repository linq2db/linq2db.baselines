BeforeExecute
-- SqlServer.2025 SqlServer.2022

UPDATE
	[x]
SET
	[x].[col1] = [x].[col1],
	[x].[col2] = [x].[col2],
	[x].[col3] = Replace([x].[col3], N'auth.', N''),
	[x].[col4] = [x].[col4],
	[x].[col5] = IIF([x].[col3] = N'empty', N'1', N'0'),
	[x].[col6] = IIF([x].[col3] = N'empty', N'', CAST([y1].[id] AS NVarChar(11)))
FROM
	[gt_s_one] [x]
		LEFT JOIN [access_mode] [y1] ON Upper(Replace([x].[col3], N'auth.', N'')) = Upper([y1].[code]) OR [x].[col3] IS NULL AND [y1].[code] IS NULL

