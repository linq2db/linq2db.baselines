BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [MappingTestClass]
(
	[Id]    INTEGER NOT NULL,
	[Value] INTEGER NOT NULL,
	[Flags] INTEGER NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

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
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @p1  -- Int32
SET     @p1 = 1

SELECT
	[t].[Id],
	[t].[Value],
	[t].[Flags]
FROM
	[MappingTestClass] [t]
WHERE
	(Cast([t].[Flags] as INTEGER) & @p1) <> 0

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [MappingTestClass]

