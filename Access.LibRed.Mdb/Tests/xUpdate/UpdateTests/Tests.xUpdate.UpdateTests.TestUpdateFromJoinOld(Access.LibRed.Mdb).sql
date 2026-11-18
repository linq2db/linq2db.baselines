-- Access.LibRed.Mdb Access.LibRed AccessLibRed
UPDATE
	[gt_s_one] [x]
		LEFT JOIN [access_mode] [y1] ON (UCase(Replace([x].[col3], 'auth.', '')) = UCase([y1].[code]) OR [x].[col3] IS NULL AND [y1].[code] IS NULL)
SET
	[x].[col1] = [x].[col1],
	[x].[col2] = [x].[col2],
	[x].[col3] = Replace([x].[col3], 'auth.', ''),
	[x].[col4] = [x].[col4],
	[x].[col5] = CASE
		WHEN [x].[col3] = 'empty' THEN '1'
		ELSE '0'
	END,
	[x].[col6] = CASE
		WHEN [x].[col3] = 'empty' THEN ''
		WHEN [y1].[id] IS NOT NULL THEN CStr([y1].[id])
		ELSE NULL
	END

