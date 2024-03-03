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
	[col3] = Replace([gt_s_one].[col3], 'auth.', ''),
	[col4] = [gt_s_one].[col4],
	[col5] = CASE
		WHEN [gt_s_one].[col3] = 'empty'
			THEN '1'
		ELSE '0'
	END,
	[col6] = CASE
		WHEN [gt_s_one].[col3] = 'empty'
			THEN ''
		ELSE Cast([y1_1].[id] as NVarChar(255))
	END
FROM
	(
		SELECT
			[y1].[id],
			Upper([y1].[code]) as [c1]
		FROM
			[access_mode] [y1]
	) [y1_1]
WHERE
	(Upper(Replace([gt_s_one].[col3], 'auth.', '')) = [y1_1].[c1] OR Upper(Replace([gt_s_one].[col3], 'auth.', '')) IS NULL AND [y1_1].[c1] IS NULL)

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [access_mode]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [gt_s_one]

