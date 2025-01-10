BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [gt_s_one]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [gt_s_one]
(
	[id]   INTEGER       NOT NULL,
	[col1] NVarChar(100)     NULL,
	[col2] NVarChar(100)     NULL,
	[col3] NVarChar(100)     NULL,
	[col4] NVarChar(100)     NULL,
	[col5] NVarChar(100)     NULL,
	[col6] NVarChar(100)     NULL,

	CONSTRAINT [PK_gt_s_one] PRIMARY KEY ([id])
)

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [access_mode]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [access_mode]
(
	[id]   INTEGER       NOT NULL,
	[code] NVarChar(255)     NULL,

	CONSTRAINT [PK_access_mode] PRIMARY KEY ([id])
)

BeforeExecute
-- SQLite.Classic SQLite

UPDATE
	[gt_s_one]
SET
	[col1] = [gt_s_one].[col1],
	[col2] = [gt_s_one].[col2],
	[col3] = REPLACE([gt_s_one].[col3], 'auth.', ''),
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
	Upper(REPLACE([gt_s_one].[col3], 'auth.', '')) = Upper([y1].[code]) OR
	REPLACE([gt_s_one].[col3], 'auth.', '') IS NULL AND [y1].[code] IS NULL

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [access_mode]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [gt_s_one]

