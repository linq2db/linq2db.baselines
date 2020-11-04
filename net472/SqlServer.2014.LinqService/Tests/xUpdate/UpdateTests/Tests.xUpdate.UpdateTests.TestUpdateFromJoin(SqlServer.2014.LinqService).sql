BeforeExecute
-- SqlServer.2014 SqlServer.2012

IF (OBJECT_ID(N'[gt_s_one]', N'U') IS NULL)
	CREATE TABLE [gt_s_one]
	(
		[id]   Int            NOT NULL,
		[col1] NVarChar(4000)     NULL,
		[col2] NVarChar(4000)     NULL,
		[col3] NVarChar(4000)     NULL,
		[col4] NVarChar(4000)     NULL,
		[col5] NVarChar(4000)     NULL,
		[col6] NVarChar(4000)     NULL,

		CONSTRAINT [PK_gt_s_one] PRIMARY KEY CLUSTERED ([id])
	)

BeforeExecute
-- SqlServer.2014 SqlServer.2012

IF (OBJECT_ID(N'[access_mode]', N'U') IS NULL)
	CREATE TABLE [access_mode]
	(
		[id]   Int            NOT NULL,
		[code] NVarChar(4000)     NULL,

		CONSTRAINT [PK_access_mode] PRIMARY KEY CLUSTERED ([id])
	)

BeforeExecute
-- SqlServer.2014 SqlServer.2012

UPDATE
	[gt_s_one]
SET
	[gt_s_one].[col1] = [x].[col1],
	[gt_s_one].[col2] = [x].[col2],
	[gt_s_one].[col3] = Replace([x].[col3], N'auth.', N''),
	[gt_s_one].[col4] = [x].[col4],
	[gt_s_one].[col5] = IIF([x].[col3] = N'empty', N'1', N'0'),
	[gt_s_one].[col6] = IIF([x].[col3] = N'empty', N'', Convert(NVarChar(11), [am].[id]))
FROM
	[gt_s_one] [x]
		LEFT JOIN [access_mode] [am] ON Upper(Replace([x].[col3], N'auth.', N'')) = Upper([am].[code])

BeforeExecute
-- SqlServer.2014 SqlServer.2012

IF (OBJECT_ID(N'[access_mode]', N'U') IS NOT NULL)
	DROP TABLE [access_mode]

BeforeExecute
-- SqlServer.2014 SqlServer.2012

IF (OBJECT_ID(N'[gt_s_one]', N'U') IS NOT NULL)
	DROP TABLE [gt_s_one]

