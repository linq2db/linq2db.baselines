-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @F NVarChar(2) -- String
SET     @F = '{}'

INSERT INTO [JsonConvertedValueTable]
(
	[Id],
	[F]
)
VALUES
(
	@Id,
	@F
)

