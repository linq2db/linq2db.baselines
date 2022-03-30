BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [gt_s_one]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [gt_s_one]
(
	[id]   INTEGER       NOT NULL,
	[col1] NVarChar(255)     NULL,
	[col2] NVarChar(255)     NULL,
	[col3] NVarChar(255)     NULL,
	[col4] NVarChar(255)     NULL,
	[col5] NVarChar(255)     NULL,
	[col6] NVarChar(255)     NULL,

	CONSTRAINT [PK_gt_s_one] PRIMARY KEY ([id])
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [access_mode]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [access_mode]
(
	[id]   INTEGER       NOT NULL,
	[code] NVarChar(255)     NULL,

	CONSTRAINT [PK_access_mode] PRIMARY KEY ([id])
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

UPDATE
	[gt_s_one]
SET
	([col1], [col2], [col3], [col4], [col5], [col6]) = (
		SELECT
			[x].[col1],
			[x].[col2],
			Replace([x].[col3], 'auth.', ''),
			[x].[col4],
			CASE
				WHEN [x].[col3] = 'empty' THEN '1'
				ELSE '0'
			END,
			CASE
				WHEN [x].[col3] = 'empty' THEN ''
				ELSE Cast([am].[id] as NVarChar(11))
			END
		FROM
			[gt_s_one] [x]
				LEFT JOIN [access_mode] [am] ON (Upper(Replace([x].[col3], 'auth.', '')) = Upper([am].[code]) OR Upper(Replace([x].[col3], 'auth.', '')) IS NULL AND Upper([am].[code]) IS NULL)
		WHERE
			[gt_s_one].[id] = [x].[id]
	)
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[gt_s_one] [x_1]
				LEFT JOIN [access_mode] [am_1] ON (Upper(Replace([x_1].[col3], 'auth.', '')) = Upper([am_1].[code]) OR Upper(Replace([x_1].[col3], 'auth.', '')) IS NULL AND Upper([am_1].[code]) IS NULL)
		WHERE
			[gt_s_one].[id] = [x_1].[id]
	)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [access_mode]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [gt_s_one]

