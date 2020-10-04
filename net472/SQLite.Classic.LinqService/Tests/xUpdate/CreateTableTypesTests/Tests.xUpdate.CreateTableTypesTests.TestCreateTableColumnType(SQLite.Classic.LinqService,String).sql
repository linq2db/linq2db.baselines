BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE [CreateTableTypes]
(
	[String] NVarChar(255) NOT NULL,
	[Id]     INTEGER       NOT NULL
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @String NVarChar -- String
SET     @String = ''

INSERT INTO [CreateTableTypes]
(
	[Id],
	[String]
)
VALUES
(
	@Id,
	@String
)

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @String NVarChar(14) -- String
SET     @String = 'test max value'

INSERT INTO [CreateTableTypes]
(
	[Id],
	[String]
)
VALUES
(
	@Id,
	@String
)

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[String]
FROM
	[CreateTableTypes] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE [CreateTableTypes]

