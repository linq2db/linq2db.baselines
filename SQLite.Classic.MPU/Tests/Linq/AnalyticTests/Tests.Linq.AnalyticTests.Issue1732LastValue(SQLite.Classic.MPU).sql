BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Position]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Position]
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
DECLARE @group  -- Int32
SET     @group = 7

SELECT
	[p_1].[Id],
	LAST_VALUE([p_1].[Id]) OVER(ORDER BY [p_1].[Order_1])
FROM
	(
		SELECT
			[p].[Id],
			[p].[Order] as [Order_1]
		FROM
			[Position] [p]
		WHERE
			[p].[Group] = @group
	) [p_1]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [Position]

