-- SqlServer.2017.MS SqlServer.2017

UPDATE
	[Issue5351Table]
SET
	[Test] = NULL
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

UPDATE
	[Issue5351Table]
SET
	[Test] = 'X'
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

SELECT
	[x].[Id],
	[x].[Test]
FROM
	[Issue5351Table] [x]
WHERE
	[x].[Test] = 'X'

