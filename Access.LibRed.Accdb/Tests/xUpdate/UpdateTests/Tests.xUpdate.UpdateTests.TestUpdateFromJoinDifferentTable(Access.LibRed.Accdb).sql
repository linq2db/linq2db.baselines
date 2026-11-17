-- Access.LibRed.Accdb Access.LibRed AccessLibRed
UPDATE
	(
		SELECT
			[x].[col3],
			[x].[col1],
			[x].[col2],
			[x].[col4],
			[x].[id],
			[t2].[id] as [id_1],
			[t2].[col1] as [col1_1],
			[t2].[col2] as [col2_1],
			[t2].[col3] as [col3_1],
			[t2].[col4] as [col4_1],
			[t2].[col5],
			[t2].[col6]
		FROM
			[gt_s_one_target] [t2],
			[gt_s_one] [x]
	) [cross_1]
		LEFT JOIN [access_mode] [y1] ON (UCase(Replace([cross_1].[col3], 'auth.', '')) = UCase([y1].[code]) OR [cross_1].[col3] IS NULL AND [y1].[code] IS NULL)
SET
	[cross_1].[col1_1] = [cross_1].[col1],
	[cross_1].[col2_1] = [cross_1].[col2],
	[cross_1].[col3_1] = Replace([cross_1].[col3], 'auth.', ''),
	[cross_1].[col4_1] = [cross_1].[col4],
	[cross_1].[col5] = CASE
		WHEN [cross_1].[col3] = 'empty' THEN '1'
		ELSE '0'
	END,
	[cross_1].[col6] = CASE
		WHEN [cross_1].[col3] = 'empty' THEN ''
		WHEN [y1].[id] IS NOT NULL THEN CStr([y1].[id])
		ELSE NULL
	END
WHERE
	[cross_1].[id] = [cross_1].[id_1]

