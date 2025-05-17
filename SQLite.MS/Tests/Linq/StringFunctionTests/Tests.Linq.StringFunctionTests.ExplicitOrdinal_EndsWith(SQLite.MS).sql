BeforeExecute
-- SQLite.MS SQLite

DELETE FROM
	[CollatedTable]

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @CaseSensitive NVarChar(10) -- String
SET     @CaseSensitive = 'TestString'
DECLARE @CaseInsensitive NVarChar(10) -- String
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
-- SQLite.MS SQLite

SELECT
	COUNT(*)
FROM
	[CollatedTable] [r]
WHERE
	[r].[CaseSensitive] LIKE '%stString' ESCAPE '~' AND
	Substr([r].[CaseSensitive], -8) = 'stString'

BeforeExecute
-- SQLite.MS SQLite

SELECT
	COUNT(*)
FROM
	[CollatedTable] [r]
WHERE
	[r].[CaseInsensitive] LIKE '%stString' ESCAPE '~' AND
	Substr([r].[CaseInsensitive], -8) = 'stString'

BeforeExecute
-- SQLite.MS SQLite

SELECT
	COUNT(*)
FROM
	[CollatedTable] [r]
WHERE
	[r].[CaseSensitive] LIKE '%ststring' ESCAPE '~' AND
	Substr([r].[CaseSensitive], -8) = 'ststring'

BeforeExecute
-- SQLite.MS SQLite

SELECT
	COUNT(*)
FROM
	[CollatedTable] [r]
WHERE
	[r].[CaseInsensitive] LIKE '%ststring' ESCAPE '~' AND
	Substr([r].[CaseInsensitive], -8) = 'ststring'

