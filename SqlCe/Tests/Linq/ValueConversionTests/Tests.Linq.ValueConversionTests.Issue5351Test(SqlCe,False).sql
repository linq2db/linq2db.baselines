-- SqlCe
DECLARE @Test NVarChar -- String
SET     @Test = NULL

UPDATE
	[Issue5351Table]
SET
	[Test] = @Test
WHERE
	[Issue5351Table].[Id] = 1

-- SqlCe

SELECT TOP (2)
	[x].[Id],
	[x].[Test]
FROM
	[Issue5351Table] [x]
WHERE
	[x].[Id] = 1

-- SqlCe
DECLARE @Test NVarChar(1) -- String
SET     @Test = 'X'

UPDATE
	[Issue5351Table]
SET
	[Test] = @Test
WHERE
	[Issue5351Table].[Id] = 2

-- SqlCe

SELECT TOP (2)
	[x].[Id],
	[x].[Test]
FROM
	[Issue5351Table] [x]
WHERE
	[x].[Id] = 2

-- SqlCe
DECLARE @Test NVarChar(1) -- String
SET     @Test = 'X'

SELECT
	[x].[Id],
	[x].[Test]
FROM
	[Issue5351Table] [x]
WHERE
	[x].[Test] = @Test

