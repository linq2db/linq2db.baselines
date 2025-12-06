-- SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @F NVarChar(2) -- String
SET     @F = '{}'

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

