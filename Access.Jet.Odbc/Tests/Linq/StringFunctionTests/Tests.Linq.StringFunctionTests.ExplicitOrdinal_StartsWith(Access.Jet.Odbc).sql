-- Access.Jet.Odbc AccessODBC

DELETE FROM
	[CollatedTable] [t1]

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

-- Access.Jet.Odbc AccessODBC

SELECT
	COUNT(*)
FROM
	[CollatedTable] [r]
WHERE
	[r].[CaseSensitive] LIKE 'TestSt%' AND InStr(1, [r].[CaseSensitive], 'TestSt', 0) = 1

-- Access.Jet.Odbc AccessODBC

SELECT
	COUNT(*)
FROM
	[CollatedTable] [r]
WHERE
	[r].[CaseInsensitive] LIKE 'TestSt%' AND InStr(1, [r].[CaseInsensitive], 'TestSt', 0) = 1

-- Access.Jet.Odbc AccessODBC

SELECT
	COUNT(*)
FROM
	[CollatedTable] [r]
WHERE
	[r].[CaseSensitive] LIKE 'testst%' AND InStr(1, [r].[CaseSensitive], 'testst', 0) = 1

-- Access.Jet.Odbc AccessODBC

SELECT
	COUNT(*)
FROM
	[CollatedTable] [r]
WHERE
	[r].[CaseInsensitive] LIKE 'testst%' AND InStr(1, [r].[CaseInsensitive], 'testst', 0) = 1

