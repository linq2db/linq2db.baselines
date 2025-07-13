BeforeExecute
-- Sybase.Managed Sybase

DELETE FROM [CollatedTable]
FROM
	[CollatedTable] [t1]

BeforeExecute
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

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	COUNT(*)
FROM
	[CollatedTable] [r]
WHERE
	[r].[CaseSensitive] LIKE '%stSt%' ESCAPE '~'

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	COUNT(*)
FROM
	[CollatedTable] [r]
WHERE
	[r].[CaseInsensitive] LIKE '%stSt%' ESCAPE '~'

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	COUNT(*)
FROM
	[CollatedTable] [r]
WHERE
	[r].[CaseSensitive] LIKE '%stst%' ESCAPE '~'

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	COUNT(*)
FROM
	[CollatedTable] [r]
WHERE
	[r].[CaseInsensitive] LIKE '%stst%' ESCAPE '~'

