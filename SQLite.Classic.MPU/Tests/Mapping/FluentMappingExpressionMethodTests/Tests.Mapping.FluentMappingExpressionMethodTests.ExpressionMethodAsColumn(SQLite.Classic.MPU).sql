BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [InstanceClass]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [InstanceClass]
(
	[Id]    INTEGER NOT NULL,
	[Value] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

INSERT INTO [InstanceClass]
(
	[Id],
	[Value]
)
VALUES
(1,101),
(2,102),
(3,103),
(4,104),
(5,105),
(6,106),
(7,107),
(8,108),
(9,109),
(10,110),
(11,111),
(12,112),
(13,113),
(14,114),
(15,115),
(16,116),
(17,117),
(18,118),
(19,119),
(20,120)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[Value],
	'M' || CAST([t1].[Id] AS NVarChar(11))
FROM
	[InstanceClass] [t1]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [InstanceClass]

