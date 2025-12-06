-- Access.Ace.OleDb AccessOleDb

DELETE FROM
	[CollatedTable] [t1]

-- Access.Ace.OleDb AccessOleDb
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

-- Access.Ace.OleDb AccessOleDb

SELECT
	COUNT(*)
FROM
	[CollatedTable] [r]
WHERE
	[r].[CaseSensitive] LIKE 'TestSt%'

-- Access.Ace.OleDb AccessOleDb

SELECT
	COUNT(*)
FROM
	[CollatedTable] [r]
WHERE
	[r].[CaseInsensitive] LIKE 'TestSt%'

-- Access.Ace.OleDb AccessOleDb

SELECT
	COUNT(*)
FROM
	[CollatedTable] [r]
WHERE
	[r].[CaseSensitive] LIKE 'testst%'

-- Access.Ace.OleDb AccessOleDb

SELECT
	COUNT(*)
FROM
	[CollatedTable] [r]
WHERE
	[r].[CaseInsensitive] LIKE 'testst%'

