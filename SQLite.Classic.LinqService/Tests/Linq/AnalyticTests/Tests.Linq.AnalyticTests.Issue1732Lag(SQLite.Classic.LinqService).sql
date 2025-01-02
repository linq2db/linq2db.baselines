BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Position]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [Position]
(
	[Group] INTEGER NOT NULL,
	[Order] INTEGER NOT NULL,
	[Id]    INTEGER     NULL
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Group  -- Int32
SET     @Group = 7
DECLARE @Order  -- Int32
SET     @Order = 10
DECLARE @Id  -- Int32
SET     @Id = 5

INSERT INTO [Position]
(
	[Group],
	[Order],
	[Id]
)
VALUES
(
	@Group,
	@Order,
	@Id
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Group  -- Int32
SET     @Group = 7
DECLARE @Order  -- Int32
SET     @Order = 20
DECLARE @Id  -- Int32
SET     @Id = 6

INSERT INTO [Position]
(
	[Group],
	[Order],
	[Id]
)
VALUES
(
	@Group,
	@Order,
	@Id
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Group  -- Int32
SET     @Group = 7
DECLARE @Order  -- Int32
SET     @Order = 30
DECLARE @Id  -- Int32
SET     @Id = NULL

INSERT INTO [Position]
(
	[Group],
	[Order],
	[Id]
)
VALUES
(
	@Group,
	@Order,
	@Id
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Group  -- Int32
SET     @Group = 7
DECLARE @Order  -- Int32
SET     @Order = 40
DECLARE @Id  -- Int32
SET     @Id = NULL

INSERT INTO [Position]
(
	[Group],
	[Order],
	[Id]
)
VALUES
(
	@Group,
	@Order,
	@Id
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @group  -- Int32
SET     @group = 7

SELECT
	[p].[Id],
	LAG([p].[Id], 1, -1) OVER(ORDER BY [p].[Order])
FROM
	[Position] [p]
WHERE
	[p].[Group] = @group

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [Position]

