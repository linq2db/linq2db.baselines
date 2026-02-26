-- SqlServer.2017.MS SqlServer.2017
DECLARE @Test Char -- AnsiStringFixedLength
SET     @Test = NULL

UPDATE
	[Issue5351Table]
SET
	[Test] = @Test
WHERE
	[Issue5351Table].[Id] = 1

-- SqlServer.2017.MS SqlServer.2017

SELECT TOP (2)
	[x].[Id],
	[x].[Test]
FROM
	[Issue5351Table] [x]
WHERE
	[x].[Id] = 1

-- SqlServer.2017.MS SqlServer.2017
DECLARE @Test Char(1) -- AnsiStringFixedLength
SET     @Test = N'X'

UPDATE
	[Issue5351Table]
SET
	[Test] = @Test
WHERE
	[Issue5351Table].[Id] = 2

-- SqlServer.2017.MS SqlServer.2017

SELECT TOP (2)
	[x].[Id],
	[x].[Test]
FROM
	[Issue5351Table] [x]
WHERE
	[x].[Id] = 2

-- SqlServer.2017.MS SqlServer.2017
DECLARE @Test Char(1) -- AnsiStringFixedLength
SET     @Test = N'X'

SELECT
	[x].[Id],
	[x].[Test]
FROM
	[Issue5351Table] [x]
WHERE
	[x].[Test] = @Test

