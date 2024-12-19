BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [ClassWithIntDate]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [ClassWithIntDate]
(
	[Id]          INTEGER NOT NULL,
	[Value]       BigInt  NOT NULL,
	[DoubleValue] Float   NOT NULL,
	[FloatValue]  Real    NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t].[Id],
	[t].[Value],
	[t].[DoubleValue],
	[t].[FloatValue]
FROM
	[ClassWithIntDate] [t]
WHERE
	[t].[Value] > 637185956951231234

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [ClassWithIntDate]

