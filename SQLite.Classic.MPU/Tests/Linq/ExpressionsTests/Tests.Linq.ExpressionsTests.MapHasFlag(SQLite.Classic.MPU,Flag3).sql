BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [MappingTestClass]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [MappingTestClass]
(
	[Id]    INTEGER NOT NULL,
	[Value] INTEGER NOT NULL,
	[Flags] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

INSERT INTO [MappingTestClass]
(
	[Id],
	[Value],
	[Flags]
)
VALUES
(1,10,1),
(2,20,2),
(3,30,3),
(4,40,4),
(5,50,5),
(6,60,6),
(7,70,7),
(8,80,0),
(9,90,1),
(10,100,2)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @flag  -- Int32
SET     @flag = 4

SELECT
	[t].[Id],
	[t].[Value],
	[t].[Flags]
FROM
	[MappingTestClass] [t]
WHERE
	([t].[Flags] & CAST(@flag AS INTEGER)) <> 0

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [MappingTestClass]

