BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue4167Table]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Issue4167Table]
(
	[ID]        INTEGER       NOT NULL,
	[Value]     NVarChar(255)     NULL,
	[EnumValue] INTEGER           NULL,

	CONSTRAINT [PK_Issue4167Table] PRIMARY KEY ([ID])
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

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
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @default  -- Int32
SET     @default = 0

WITH [CTE_1] ([EnumValue])
AS
(
	SELECT
		Coalesce([t].[EnumValue], @default)
	FROM
		[Issue4167Table] [t]
	WHERE
		[t].[Value] = '000001'
	GROUP BY
		[t].[Value],
		[t].[EnumValue]
)
SELECT
	[r].[EnumValue]
FROM
	[CTE_1] [r]
ORDER BY
	[r].[EnumValue]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Issue4167Table]

