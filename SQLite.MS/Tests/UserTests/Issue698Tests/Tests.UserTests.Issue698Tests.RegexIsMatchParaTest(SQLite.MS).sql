-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Text NVarChar(4) -- String
SET     @Text = 'abcd'

INSERT INTO [InfeedAdvicePositionDTO]
(
	[Id],
	[Text]
)
VALUES
(
	@Id,
	@Text
)

-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @Text NVarChar(6) -- String
SET     @Text = 'AAbbcc'

INSERT INTO [InfeedAdvicePositionDTO]
(
	[Id],
	[Text]
)
VALUES
(
	@Id,
	@Text
)

-- SQLite.MS SQLite

SELECT
	[infeed].[Id],
	[infeed].[Text]
FROM
	[InfeedAdvicePositionDTO] [infeed]
WHERE
	(REGEXP_LIKE([infeed].[Text], 'aa.*', 'i'))
LIMIT 2

