BeforeExecute
-- SQLite.Classic SQLite

DELETE FROM
	[CollatedTable]

BeforeExecute
-- SQLite.Classic SQLite
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
-- SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[CollatedTable] [r]
WHERE
	[r].[CaseSensitive] LIKE 'TestSt%' ESCAPE '~' AND Substr([r].[CaseSensitive], 1, Length('TestSt')) = 'TestSt'

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[CollatedTable] [r]
WHERE
	[r].[CaseInsensitive] LIKE 'TestSt%' ESCAPE '~' AND
	Substr([r].[CaseInsensitive], 1, Length('TestSt')) = 'TestSt'

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[CollatedTable] [r]
WHERE
	[r].[CaseSensitive] LIKE 'testst%' ESCAPE '~' AND Substr([r].[CaseSensitive], 1, Length('testst')) = 'testst'

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	COUNT(*)
FROM
	[CollatedTable] [r]
WHERE
	[r].[CaseInsensitive] LIKE 'testst%' ESCAPE '~' AND
	Substr([r].[CaseInsensitive], 1, Length('testst')) = 'testst'

