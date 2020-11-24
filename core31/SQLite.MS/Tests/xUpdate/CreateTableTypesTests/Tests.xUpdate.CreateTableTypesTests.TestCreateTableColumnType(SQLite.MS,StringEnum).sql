BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE [CreateTableTypes]
(
	[Id]         INTEGER     NOT NULL,
	[StringEnum] NVarChar(2) NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @StringEnum NVarChar(2) -- String
SET     @StringEnum = '14'

INSERT INTO [CreateTableTypes]
(
	[Id],
	[StringEnum]
)
VALUES
(
	@Id,
	@StringEnum
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @StringEnum NVarChar(1) -- String
SET     @StringEnum = '4'

INSERT INTO [CreateTableTypes]
(
	[Id],
	[StringEnum]
)
VALUES
(
	@Id,
	@StringEnum
)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[StringEnum]
FROM
	[CreateTableTypes] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE [CreateTableTypes]

