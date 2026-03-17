-- Sybase.Managed Sybase

DELETE FROM [CollatedTable]
FROM
	[CollatedTable] [t1]

-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @CaseSensitive UniVarChar(10) -- String
SET     @CaseSensitive = 'TestString'
DECLARE @CaseInsensitive UniVarChar(10) -- String
SET     @CaseInsensitive = 'TestString'

INSERT INTO [CollatedTable]
(
	[Id],
	[CaseSensitive],
	[CaseInsensitive]
)
VALUES
(
	@Id,
	@CaseSensitive,
	@CaseInsensitive
)

-- Sybase.Managed Sybase

SELECT
	COUNT(*)
FROM
	[CollatedTable] [r]
WHERE
	Lower([r].[CaseSensitive]) LIKE '%stst%' ESCAPE '~'

-- Sybase.Managed Sybase

SELECT
	COUNT(*)
FROM
	[CollatedTable] [r]
WHERE
	Lower([r].[CaseInsensitive]) LIKE '%stst%' ESCAPE '~'

-- Sybase.Managed Sybase

SELECT
	COUNT(*)
FROM
	[CollatedTable] [r]
WHERE
	Lower([r].[CaseSensitive]) LIKE '%stst%' ESCAPE '~'

-- Sybase.Managed Sybase

SELECT
	COUNT(*)
FROM
	[CollatedTable] [r]
WHERE
	Lower([r].[CaseInsensitive]) LIKE '%stst%' ESCAPE '~'

