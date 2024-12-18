BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue4167Table]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Issue4167Table]
(
	[ID]        INTEGER       NOT NULL,
	[Value]     NVarChar(255)     NULL,
	[EnumValue] INTEGER           NULL,

	CONSTRAINT [PK_Issue4167Table] PRIMARY KEY ([ID])
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

INSERT INTO [Issue4167Table]
(
	[ID],
	[Value],
	[EnumValue]
)
VALUES
(1,'000001',0),
(2,'000001',3),
(3,'000001',NULL),
(4,'000002',0)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

WITH [CTE_1] ([EnumValue])
AS
(
	SELECT
		CASE
			WHEN [g_1].[EnumValue] IS NOT NULL THEN [g_1].[EnumValue]
			ELSE 0
		END
	FROM
		[Issue4167Table] [g_1]
	WHERE
		[g_1].[Value] = '000001' AND [g_1].[Value] IS NOT NULL
	GROUP BY
		[g_1].[Value],
		[g_1].[EnumValue]
)
SELECT
	[t1].[EnumValue]
FROM
	[CTE_1] [t1]
ORDER BY
	[t1].[EnumValue]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue4167Table]

