﻿BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

UPDATE
	[t2]
SET
	[t2].[col1] = [x].[col1],
	[t2].[col2] = [x].[col2],
	[t2].[col3] = Replace([x].[col3], N'auth.', N''),
	[t2].[col4] = [x].[col4],
	[t2].[col5] = CASE
		WHEN [x].[col3] = N'empty' THEN N'1'
		ELSE N'0'
	END,
	[t2].[col6] = CASE
		WHEN [x].[col3] = N'empty' THEN N''
		ELSE CAST([y1].[id] AS NVarChar(11))
	END
FROM
	[gt_s_one] [x]
		INNER JOIN [gt_s_one_target] [t2] ON [x].[id] = [t2].[id]
		LEFT JOIN [access_mode] [y1] ON Upper(Replace([x].[col3], N'auth.', N'')) = Upper([y1].[code]) OR [x].[col3] IS NULL AND [y1].[code] IS NULL

