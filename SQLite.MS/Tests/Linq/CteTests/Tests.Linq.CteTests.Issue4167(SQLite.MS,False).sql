BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue4167Table]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Issue4167Table]
(
	[ID]        INTEGER       NOT NULL,
	[Value]     NVarChar(255)     NULL,
	[EnumValue] INTEGER           NULL,

	CONSTRAINT [PK_Issue4167Table] PRIMARY KEY ([ID])
)

BeforeExecute
-- SQLite.MS SQLite

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
-- SQLite.MS SQLite

SELECT
	[t1].[EnumValue]
FROM
	(
		SELECT
			CASE
				WHEN [r].[EnumValue] IS NOT NULL THEN [r].[EnumValue]
				ELSE 0
			END as [EnumValue]
		FROM
			[Issue4167Table] [r]
		WHERE
			[r].[Value] = '000001' AND [r].[Value] IS NOT NULL
		GROUP BY
			[r].[Value],
			[r].[EnumValue]
	) [t1]
ORDER BY
	[t1].[EnumValue]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Issue4167Table]

