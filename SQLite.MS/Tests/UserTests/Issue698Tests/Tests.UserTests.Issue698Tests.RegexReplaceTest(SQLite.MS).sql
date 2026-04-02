-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Text NVarChar(6) -- String
SET     @Text = 'ab12cd'

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
DECLARE @Text NVarChar(10) -- String
SET     @Text = 'AA11bb22cc'

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
	REGEXP_REPLACE([t1].[Text], '[0-9]+', '')
FROM
	[InfeedAdvicePositionDTO] [t1]
ORDER BY
	[t1].[Id]

