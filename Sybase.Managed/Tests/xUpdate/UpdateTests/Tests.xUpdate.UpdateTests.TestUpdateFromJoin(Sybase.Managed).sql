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
	[gt_s_one]
SET
	[col1] = [gt_s_one].[col1],
	[col2] = [gt_s_one].[col2],
	[col3] = Str_Replace([gt_s_one].[col3], 'auth.', ''),
	[col4] = [gt_s_one].[col4],
	[col5] = CASE
		WHEN [gt_s_one].[col3] = 'empty' THEN '1'
		ELSE '0'
	END,
	[col6] = CASE
		WHEN [gt_s_one].[col3] = 'empty' THEN ''
		ELSE CAST([y1].[id] AS NVarChar(11))
	END
FROM
	[access_mode] [y1]
WHERE
	(Upper(Str_Replace([gt_s_one].[col3], 'auth.', '')) = Upper([y1].[code]) OR Upper(Str_Replace([gt_s_one].[col3], 'auth.', '')) IS NULL AND Upper([y1].[code]) IS NULL)

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'access_mode') IS NOT NULL)
	DROP TABLE [access_mode]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'gt_s_one') IS NOT NULL)
	DROP TABLE [gt_s_one]

