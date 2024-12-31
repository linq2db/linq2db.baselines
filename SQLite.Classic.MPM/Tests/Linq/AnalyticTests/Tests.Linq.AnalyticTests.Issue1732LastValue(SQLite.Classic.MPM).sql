BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Position]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Position]
(
	[Group] INTEGER NOT NULL,
	[Order] INTEGER NOT NULL,
	[Id]    INTEGER     NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

INSERT INTO [Position]
(
	[Group],
	[Order],
	[Id]
)
VALUES
(7,10,5),
(7,20,6),
(7,30,NULL),
(7,40,NULL)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @group  -- Int32
SET     @group = 7

SELECT
	[p].[Id],
	LAST_VALUE([p].[Id]) OVER(ORDER BY [p].[Order])
FROM
	[Position] [p]
WHERE
	[p].[Group] = @group

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [Position]

