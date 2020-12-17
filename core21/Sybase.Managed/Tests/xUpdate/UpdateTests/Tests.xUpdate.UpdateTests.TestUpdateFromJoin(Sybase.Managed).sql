BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'gt_s_one') IS NULL)
	EXECUTE('
		CREATE TABLE [gt_s_one]
		(
			[id]   Int           NOT NULL,
			[col1] NVarChar(255)     NULL,
			[col2] NVarChar(255)     NULL,
			[col3] NVarChar(255)     NULL,
			[col4] NVarChar(255)     NULL,
			[col5] NVarChar(255)     NULL,
			[col6] NVarChar(255)     NULL,

			CONSTRAINT [PK_gt_s_one] PRIMARY KEY CLUSTERED ([id])
		)
	')

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
	[gt_s_one].[col1] = [x].[col1],
	[gt_s_one].[col2] = [x].[col2],
	[gt_s_one].[col3] = Str_Replace([x].[col3], 'auth.', ''),
	[gt_s_one].[col4] = [x].[col4],
	[gt_s_one].[col5] = CASE
		WHEN [x].[col3] = 'empty' THEN '1'
		ELSE '0'
	END,
	[gt_s_one].[col6] = CASE
		WHEN [x].[col3] = 'empty' THEN ''
		ELSE Convert(NVarChar(11), [am].[id])
	END
FROM
	[gt_s_one] [x]
		LEFT JOIN [access_mode] [am] ON (Upper(Str_Replace([x].[col3], 'auth.', '')) = Upper([am].[code]) OR Upper(Str_Replace([x].[col3], 'auth.', '')) IS NULL AND Upper([am].[code]) IS NULL)

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'access_mode') IS NOT NULL)
	DROP TABLE [access_mode]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'gt_s_one') IS NOT NULL)
	DROP TABLE [gt_s_one]

