BeforeExecute
-- Access.Jet.Odbc AccessODBC

DELETE FROM
	[CollatedTable] [t1]

BeforeExecute
-- Access.Jet.Odbc AccessODBC
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
-- Access.Jet.Odbc AccessODBC

SELECT
	COUNT(*)
FROM
	[CollatedTable] [r]
WHERE
	[r].[CaseSensitive] LIKE 'TestSt%'

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	COUNT(*)
FROM
	[CollatedTable] [r]
WHERE
	[r].[CaseInsensitive] LIKE 'TestSt%'

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	COUNT(*)
FROM
	[CollatedTable] [r]
WHERE
	[r].[CaseSensitive] LIKE 'testst%'

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	COUNT(*)
FROM
	[CollatedTable] [r]
WHERE
	[r].[CaseInsensitive] LIKE 'testst%'

