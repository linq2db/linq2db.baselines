﻿BeforeExecute
-- Access.Ace.Odbc AccessODBC

DELETE FROM
	[CollatedTable] [t1]

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
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
	?,
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	COUNT(*)
FROM
	[CollatedTable] [r]
WHERE
	[r].[CaseSensitive] LIKE '%stString'

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	COUNT(*)
FROM
	[CollatedTable] [r]
WHERE
	[r].[CaseInsensitive] LIKE '%stString'

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	COUNT(*)
FROM
	[CollatedTable] [r]
WHERE
	[r].[CaseSensitive] LIKE '%ststring'

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	COUNT(*)
FROM
	[CollatedTable] [r]
WHERE
	[r].[CaseInsensitive] LIKE '%ststring'

