BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE [TestTable]
(
	[Id] INTEGER NOT NULL,
	[F]  VarChar NOT NULL
)

BeforeExecute
-- SQLite.Classic SQLite
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
-- SQLite.Classic SQLite

DROP TABLE [TestTable]

