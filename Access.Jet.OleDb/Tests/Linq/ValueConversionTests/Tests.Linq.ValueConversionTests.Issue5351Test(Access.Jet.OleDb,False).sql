-- Access.Jet.OleDb AccessOleDb
DECLARE @Test Char -- AnsiStringFixedLength
SET     @Test = NULL

UPDATE
	[Issue5351Table] [x]
SET
	[x].[Test] = @Test
WHERE
	[x].[Id] = 1

-- Access.Jet.OleDb AccessOleDb

SELECT TOP 2
	[x].[Id],
	[x].[Test]
FROM
	[Issue5351Table] [x]
WHERE
	[x].[Id] = 1

-- Access.Jet.OleDb AccessOleDb
DECLARE @Test Char(1) -- AnsiStringFixedLength
SET     @Test = 'X'

UPDATE
	[Issue5351Table] [x]
SET
	[x].[Test] = @Test
WHERE
	[x].[Id] = 2

-- Access.Jet.OleDb AccessOleDb

SELECT TOP 2
	[x].[Id],
	[x].[Test]
FROM
	[Issue5351Table] [x]
WHERE
	[x].[Id] = 2

-- Access.Jet.OleDb AccessOleDb
DECLARE @Test Char(1) -- AnsiStringFixedLength
SET     @Test = 'X'

SELECT
	[x].[Id],
	[x].[Test]
FROM
	[Issue5351Table] [x]
WHERE
	[x].[Test] = @Test

