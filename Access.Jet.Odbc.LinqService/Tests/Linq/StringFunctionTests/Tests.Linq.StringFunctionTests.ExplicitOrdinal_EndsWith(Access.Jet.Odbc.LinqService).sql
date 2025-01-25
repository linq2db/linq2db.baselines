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
	[r].[CaseSensitive] LIKE '%stString' AND InStr(Len([r].[CaseSensitive]) - 7, [r].[CaseSensitive], 'stString', 0) = (Len([r].[CaseSensitive]) - 7)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	COUNT(*)
FROM
	[CollatedTable] [r]
WHERE
	[r].[CaseInsensitive] LIKE '%stString' AND InStr(Len([r].[CaseInsensitive]) - 7, [r].[CaseInsensitive], 'stString', 0) = (Len([r].[CaseInsensitive]) - 7)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	COUNT(*)
FROM
	[CollatedTable] [r]
WHERE
	[r].[CaseSensitive] LIKE '%ststring' AND InStr(Len([r].[CaseSensitive]) - 7, [r].[CaseSensitive], 'ststring', 0) = (Len([r].[CaseSensitive]) - 7)

BeforeExecute
-- Access.Jet.Odbc AccessODBC

SELECT
	COUNT(*)
FROM
	[CollatedTable] [r]
WHERE
	[r].[CaseInsensitive] LIKE '%ststring' AND InStr(Len([r].[CaseInsensitive]) - 7, [r].[CaseInsensitive], 'ststring', 0) = (Len([r].[CaseInsensitive]) - 7)

