-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Text NVarChar(4) -- String
SET     @Text = 'AAbb'

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
DECLARE @Text NVarChar(4) -- String
SET     @Text = 'XXaa'

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
	REGEXP_REPLACE([t1].[Text], 'aa', '', 'i')
FROM
	[InfeedAdvicePositionDTO] [t1]
ORDER BY
	[t1].[Id]

