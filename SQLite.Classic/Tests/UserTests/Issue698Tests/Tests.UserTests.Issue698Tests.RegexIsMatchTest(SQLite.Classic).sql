-- SQLite.Classic SQLite
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

-- SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @Text NVarChar(6) -- String
SET     @Text = 'aabbcc'

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

-- SQLite.Classic SQLite

SELECT
	[infeed].[Id],
	[infeed].[Text]
FROM
	[InfeedAdvicePositionDTO] [infeed]
WHERE
	REGEXP_LIKE([infeed].[Text], 'aa.*')
LIMIT 2

