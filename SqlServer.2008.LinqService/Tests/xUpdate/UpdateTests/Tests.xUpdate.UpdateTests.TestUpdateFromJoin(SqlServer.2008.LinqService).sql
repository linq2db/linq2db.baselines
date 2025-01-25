BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[gt_s_one]', N'U') IS NOT NULL)
	DROP TABLE [gt_s_one]

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[gt_s_one]', N'U') IS NULL)
	CREATE TABLE [gt_s_one]
	(
		[id]   Int           NOT NULL,
		[col1] NVarChar(100)     NULL,
		[col2] NVarChar(100)     NULL,
		[col3] NVarChar(100)     NULL,
		[col4] NVarChar(100)     NULL,
		[col5] NVarChar(100)     NULL,
		[col6] NVarChar(100)     NULL,

		CONSTRAINT [PK_gt_s_one] PRIMARY KEY CLUSTERED ([id])
	)

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[access_mode]', N'U') IS NOT NULL)
	DROP TABLE [access_mode]

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[access_mode]', N'U') IS NULL)
	CREATE TABLE [access_mode]
	(
		[id]   Int            NOT NULL,
		[code] NVarChar(4000)     NULL,

		CONSTRAINT [PK_access_mode] PRIMARY KEY CLUSTERED ([id])
	)

BeforeExecute
-- SqlServer.2008

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
		LEFT JOIN [access_mode] [y1] ON (Upper(Replace([x].[col3], N'auth.', N'')) = Upper([y1].[code]) OR Upper(Replace([x].[col3], N'auth.', N'')) IS NULL AND Upper([y1].[code]) IS NULL)

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[access_mode]', N'U') IS NOT NULL)
	DROP TABLE [access_mode]

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[gt_s_one]', N'U') IS NOT NULL)
	DROP TABLE [gt_s_one]

