BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [gt_s_one]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

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
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [access_mode]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [access_mode]
(
	[id]   INTEGER       NOT NULL,
	[code] NVarChar(255)     NULL,

	CONSTRAINT [PK_access_mode] PRIMARY KEY ([id])
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

UPDATE
	[gt_s_one]
SET
	[col1] = (
		SELECT
			[x].[col1]
		FROM
			[gt_s_one] [x]
				LEFT JOIN [access_mode] [am] ON (Upper(Replace([x].[col3], 'auth.', '')) = Upper([am].[code]) OR Upper(Replace([x].[col3], 'auth.', '')) IS NULL AND Upper([am].[code]) IS NULL)
		WHERE
			[gt_s_one].[id] = [x].[id]
	),
	[col2] = (
		SELECT
			[x_1].[col2]
		FROM
			[gt_s_one] [x_1]
				LEFT JOIN [access_mode] [am_1] ON (Upper(Replace([x_1].[col3], 'auth.', '')) = Upper([am_1].[code]) OR Upper(Replace([x_1].[col3], 'auth.', '')) IS NULL AND Upper([am_1].[code]) IS NULL)
		WHERE
			[gt_s_one].[id] = [x_1].[id]
	),
	[col3] = (
		SELECT
			Replace([x_2].[col3], 'auth.', '')
		FROM
			[gt_s_one] [x_2]
				LEFT JOIN [access_mode] [am_2] ON (Upper(Replace([x_2].[col3], 'auth.', '')) = Upper([am_2].[code]) OR Upper(Replace([x_2].[col3], 'auth.', '')) IS NULL AND Upper([am_2].[code]) IS NULL)
		WHERE
			[gt_s_one].[id] = [x_2].[id]
	),
	[col4] = (
		SELECT
			[x_3].[col4]
		FROM
			[gt_s_one] [x_3]
				LEFT JOIN [access_mode] [am_3] ON (Upper(Replace([x_3].[col3], 'auth.', '')) = Upper([am_3].[code]) OR Upper(Replace([x_3].[col3], 'auth.', '')) IS NULL AND Upper([am_3].[code]) IS NULL)
		WHERE
			[gt_s_one].[id] = [x_3].[id]
	),
	[col5] = (
		SELECT
			CASE
				WHEN [x_4].[col3] = 'empty'
					THEN '1'
				ELSE '0'
			END
		FROM
			[gt_s_one] [x_4]
				LEFT JOIN [access_mode] [am_4] ON (Upper(Replace([x_4].[col3], 'auth.', '')) = Upper([am_4].[code]) OR Upper(Replace([x_4].[col3], 'auth.', '')) IS NULL AND Upper([am_4].[code]) IS NULL)
		WHERE
			[gt_s_one].[id] = [x_4].[id]
	),
	[col6] = (
		SELECT
			CASE
				WHEN [x_5].[col3] = 'empty'
					THEN ''
				ELSE Cast([am_5].[id] as NVarChar(11))
			END
		FROM
			[gt_s_one] [x_5]
				LEFT JOIN [access_mode] [am_5] ON (Upper(Replace([x_5].[col3], 'auth.', '')) = Upper([am_5].[code]) OR Upper(Replace([x_5].[col3], 'auth.', '')) IS NULL AND Upper([am_5].[code]) IS NULL)
		WHERE
			[gt_s_one].[id] = [x_5].[id]
	)
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[gt_s_one] [x_6]
				LEFT JOIN [access_mode] [am_6] ON (Upper(Replace([x_6].[col3], 'auth.', '')) = Upper([am_6].[code]) OR Upper(Replace([x_6].[col3], 'auth.', '')) IS NULL AND Upper([am_6].[code]) IS NULL)
		WHERE
			[gt_s_one].[id] = [x_6].[id]
	)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [access_mode]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [gt_s_one]

