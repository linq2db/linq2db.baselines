-- Sybase.Managed Sybase
DECLARE @Test Char -- AnsiStringFixedLength
SET     @Test = NULL

UPDATE
	[Issue5351Table]
SET
	[Test] = @Test
WHERE
	[Issue5351Table].[Id] = 1

-- Sybase.Managed Sybase

SELECT TOP 2
	[x].[Id],
	[x].[Test]
FROM
	[Issue5351Table] [x]
WHERE
	[x].[Id] = 1

-- Sybase.Managed Sybase
DECLARE @Test Char(1) -- AnsiStringFixedLength
SET     @Test = 'X'

UPDATE
	[Issue5351Table]
SET
	[Test] = @Test
WHERE
	[Issue5351Table].[Id] = 2

-- Sybase.Managed Sybase

SELECT TOP 2
	[x].[Id],
	[x].[Test]
FROM
	[Issue5351Table] [x]
WHERE
	[x].[Id] = 2

-- Sybase.Managed Sybase
DECLARE @Test Char(1) -- AnsiStringFixedLength
SET     @Test = 'X'

SELECT
	[x].[Id],
	[x].[Test]
FROM
	[Issue5351Table] [x]
WHERE
	[x].[Test] = @Test

