BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DELETE FROM
	[CollatedTable] [t1]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @CaseSensitive VarWChar(10) -- String
SET     @CaseSensitive = 'TestString'
DECLARE @CaseInsensitive VarWChar(10) -- String
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
-- Access.Jet.OleDb AccessOleDb

SELECT
	COUNT(*)
FROM
	[CollatedTable] [r]
WHERE
	[r].[CaseSensitive] LIKE '%stSt%' AND InStr(1, [r].[CaseSensitive], 'stSt', 0) >= 1

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	COUNT(*)
FROM
	[CollatedTable] [r]
WHERE
	[r].[CaseInsensitive] LIKE '%stSt%' AND InStr(1, [r].[CaseInsensitive], 'stSt', 0) >= 1

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	COUNT(*)
FROM
	[CollatedTable] [r]
WHERE
	[r].[CaseSensitive] LIKE '%stst%' AND InStr(1, [r].[CaseSensitive], 'stst', 0) >= 1

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	COUNT(*)
FROM
	[CollatedTable] [r]
WHERE
	[r].[CaseInsensitive] LIKE '%stst%' AND InStr(1, [r].[CaseInsensitive], 'stst', 0) >= 1

