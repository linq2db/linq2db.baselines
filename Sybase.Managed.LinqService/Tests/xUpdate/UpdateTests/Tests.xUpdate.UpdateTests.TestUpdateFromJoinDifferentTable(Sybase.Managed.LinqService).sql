BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'gt_s_one') IS NOT NULL)
	DROP TABLE [gt_s_one]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'gt_s_one') IS NULL)
	EXECUTE('
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
	')

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'gt_s_one_target') IS NOT NULL)
	DROP TABLE [gt_s_one_target]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'gt_s_one_target') IS NULL)
	EXECUTE('
		CREATE TABLE [gt_s_one_target]
		(
			[id]   Int           NOT NULL,
			[col1] NVarChar(100)     NULL,
			[col2] NVarChar(100)     NULL,
			[col3] NVarChar(100)     NULL,
			[col4] NVarChar(100)     NULL,
			[col5] NVarChar(100)     NULL,
			[col6] NVarChar(100)     NULL,

			CONSTRAINT [PK_gt_s_one_target] PRIMARY KEY CLUSTERED ([id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'access_mode') IS NOT NULL)
	DROP TABLE [access_mode]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'access_mode') IS NULL)
	EXECUTE('
		CREATE TABLE [access_mode]
		(
			[id]   Int           NOT NULL,
			[code] NVarChar(255)     NULL,

			CONSTRAINT [PK_access_mode] PRIMARY KEY CLUSTERED ([id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

UPDATE
	[gt_s_one_target]
SET
	[col1] = [x].[col1],
	[col2] = [x].[col2],
	[col3] = Str_Replace([x].[col3], 'auth.', ''),
	[col4] = [x].[col4],
	[col5] = CASE
		WHEN [x].[col3] = 'empty' AND [x].[col3] IS NOT NULL THEN '1'
		ELSE '0'
	END,
	[col6] = CASE
		WHEN [x].[col3] = 'empty' AND [x].[col3] IS NOT NULL THEN ''
		ELSE CAST([y1].[id] AS NVarChar(11))
	END
FROM
	[gt_s_one] [x]
		LEFT JOIN [access_mode] [y1] ON Upper(Str_Replace([x].[col3], 'auth.', '')) = Upper([y1].[code]) AND Upper(Str_Replace([x].[col3], 'auth.', '')) IS NOT NULL AND Upper([y1].[code]) IS NOT NULL OR Upper(Str_Replace([x].[col3], 'auth.', '')) IS NULL AND Upper([y1].[code]) IS NULL
WHERE
	[x].[id] = [gt_s_one_target].[id]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'access_mode') IS NOT NULL)
	DROP TABLE [access_mode]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'gt_s_one_target') IS NOT NULL)
	DROP TABLE [gt_s_one_target]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'gt_s_one') IS NOT NULL)
	DROP TABLE [gt_s_one]

