-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Text NVarChar(10) -- String
SET     @Text = 'aa11aa22aa'

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
	REGEXP_REPLACE([t1].[Text], 'aa', 'X', 3, 1)
FROM
	[InfeedAdvicePositionDTO] [t1]
LIMIT 2

