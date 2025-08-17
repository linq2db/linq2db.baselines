BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

DELETE FROM
	[CollatedTable]

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)
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
-- SQLite.Classic SQLite (asynchronously)

SELECT
	COUNT(*)
FROM
	[CollatedTable] [r]
WHERE
	[r].[CaseSensitive] LIKE '%stSt%' ESCAPE '~'

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

SELECT
	COUNT(*)
FROM
	[CollatedTable] [r]
WHERE
	[r].[CaseInsensitive] LIKE '%stSt%' ESCAPE '~'

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

SELECT
	COUNT(*)
FROM
	[CollatedTable] [r]
WHERE
	[r].[CaseSensitive] LIKE '%stst%' ESCAPE '~'

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

SELECT
	COUNT(*)
FROM
	[CollatedTable] [r]
WHERE
	[r].[CaseInsensitive] LIKE '%stst%' ESCAPE '~'

