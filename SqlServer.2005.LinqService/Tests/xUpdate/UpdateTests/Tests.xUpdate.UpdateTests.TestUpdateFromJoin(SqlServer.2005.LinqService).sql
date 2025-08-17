BeforeExecute
-- SqlServer.2005 (asynchronously)

UPDATE
	[x]
SET
	[x].[col1] = [x].[col1],
	[x].[col2] = [x].[col2],
	[x].[col3] = Replace([x].[col3], N'auth.', N''),
	[x].[col4] = [x].[col4],
	[x].[col5] = CASE
		WHEN [x].[col3] = N'empty' THEN N'1'
		ELSE N'0'
	END,
	[x].[col6] = CASE
		WHEN [x].[col3] = N'empty' THEN N''
		ELSE CAST([y1].[id] AS NVarChar(11))
	END
FROM
	[gt_s_one] [x]
		LEFT JOIN [access_mode] [y1] ON Upper(Replace([x].[col3], N'auth.', N'')) = Upper([y1].[code]) OR [x].[col3] IS NULL AND [y1].[code] IS NULL

