﻿BeforeExecute
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
	Count(*)
FROM
	[CollatedTable] [r]
WHERE
	[r].[CaseSensitive] LIKE '%stSt%' ESCAPE '~' AND InStr([r].[CaseSensitive], 'stSt') > 0

BeforeExecute
-- SQLite.MS SQLite

SELECT
	Count(*)
FROM
	[CollatedTable] [r]
WHERE
	[r].[CaseInsensitive] LIKE '%stSt%' ESCAPE '~' AND
	InStr([r].[CaseInsensitive], 'stSt') > 0

BeforeExecute
-- SQLite.MS SQLite

SELECT
	Count(*)
FROM
	[CollatedTable] [r]
WHERE
	[r].[CaseSensitive] LIKE '%stst%' ESCAPE '~' AND InStr([r].[CaseSensitive], 'stst') > 0

BeforeExecute
-- SQLite.MS SQLite

SELECT
	Count(*)
FROM
	[CollatedTable] [r]
WHERE
	[r].[CaseInsensitive] LIKE '%stst%' ESCAPE '~' AND
	InStr([r].[CaseInsensitive], 'stst') > 0

