-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Text NVarChar(3) -- String
SET     @Text = 'a
b'

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
	REGEXP_REPLACE([t1].[Text], '.', 'x', 's')
FROM
	[InfeedAdvicePositionDTO] [t1]
LIMIT 2

-- SQLite.MS SQLite

SELECT
	REGEXP_REPLACE([t1].[Text], '.', 'x', 'is')
FROM
	[InfeedAdvicePositionDTO] [t1]
LIMIT 2

