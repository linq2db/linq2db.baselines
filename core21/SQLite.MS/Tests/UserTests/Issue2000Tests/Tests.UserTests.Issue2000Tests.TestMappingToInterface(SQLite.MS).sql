BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE [TestTable]
(
	[Id] INTEGER NOT NULL,
	[F]  VarChar NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @F NVarChar(7) -- String
SET     @F = '{"A":5}'

INSERT INTO [TestTable]
(
	[Id],
	[F]
)
VALUES
(
	@Id,
	@F
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE [TestTable]

