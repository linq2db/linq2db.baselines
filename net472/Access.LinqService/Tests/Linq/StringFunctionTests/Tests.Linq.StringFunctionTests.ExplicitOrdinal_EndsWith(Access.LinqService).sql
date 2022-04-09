BeforeExecute
-- Access AccessOleDb

DELETE FROM
	[CollatedTable] [t1]

BeforeExecute
-- Access AccessOleDb
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
-- Access AccessOleDb

SELECT
	Count(*)
FROM
	[CollatedTable] [r]
WHERE
	[r].[CaseSensitive] LIKE '%stString' AND InStr(LEN([r].[CaseSensitive]) - 7, [r].[CaseSensitive], 'stString', 0) = (LEN([r].[CaseSensitive]) - 7)

BeforeExecute
-- Access AccessOleDb

SELECT
	Count(*)
FROM
	[CollatedTable] [r]
WHERE
	[r].[CaseInsensitive] LIKE '%stString' AND InStr(LEN([r].[CaseInsensitive]) - 7, [r].[CaseInsensitive], 'stString', 0) = (LEN([r].[CaseInsensitive]) - 7)

BeforeExecute
-- Access AccessOleDb

SELECT
	Count(*)
FROM
	[CollatedTable] [r]
WHERE
	[r].[CaseSensitive] LIKE '%ststring' AND InStr(LEN([r].[CaseSensitive]) - 7, [r].[CaseSensitive], 'ststring', 0) = (LEN([r].[CaseSensitive]) - 7)

BeforeExecute
-- Access AccessOleDb

SELECT
	Count(*)
FROM
	[CollatedTable] [r]
WHERE
	[r].[CaseInsensitive] LIKE '%ststring' AND InStr(LEN([r].[CaseInsensitive]) - 7, [r].[CaseInsensitive], 'ststring', 0) = (LEN([r].[CaseInsensitive]) - 7)

