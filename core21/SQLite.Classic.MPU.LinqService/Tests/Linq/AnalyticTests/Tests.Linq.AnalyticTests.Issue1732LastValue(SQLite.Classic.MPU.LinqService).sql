BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE [Position]
(
	[Group] INTEGER NOT NULL,
	[Order] INTEGER NOT NULL,
	[Id]    INTEGER     NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

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
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @group_1  -- Int32
SET     @group_1 = 7

SELECT
	[p].[Id],
	LAST_VALUE([p].[Id]) OVER(ORDER BY [p].[Order])
FROM
	[Position] [p]
WHERE
	[p].[Group] = @group_1

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE [Position]

