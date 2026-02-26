-- Sybase.Managed Sybase

UPDATE
	[Issue5351Table]
SET
	[Test] = NULL
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

UPDATE
	[Issue5351Table]
SET
	[Test] = 'X'
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

SELECT
	[x].[Id],
	[x].[Test]
FROM
	[Issue5351Table] [x]
WHERE
	[x].[Test] = 'X'

