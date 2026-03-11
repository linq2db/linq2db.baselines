-- SqlServer.2014.MS SqlServer.2014

DELETE [t1]
FROM
	[CollatedTable] [t1]

-- SqlServer.2014.MS SqlServer.2014
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @CaseSensitive NVarChar(4000) -- String
SET     @CaseSensitive = N'TestString'
DECLARE @CaseInsensitive NVarChar(4000) -- String
SET     @CaseInsensitive = N'TestString'

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

-- SqlServer.2014.MS SqlServer.2014

SELECT
	COUNT(*)
FROM
	[CollatedTable] [r]
WHERE
	Lower([r].[CaseSensitive]) LIKE N'testst%' ESCAPE N'~'

-- SqlServer.2014.MS SqlServer.2014

SELECT
	COUNT(*)
FROM
	[CollatedTable] [r]
WHERE
	Lower([r].[CaseInsensitive]) LIKE N'testst%' ESCAPE N'~'

-- SqlServer.2014.MS SqlServer.2014

SELECT
	COUNT(*)
FROM
	[CollatedTable] [r]
WHERE
	Lower([r].[CaseSensitive]) LIKE N'testst%' ESCAPE N'~'

-- SqlServer.2014.MS SqlServer.2014

SELECT
	COUNT(*)
FROM
	[CollatedTable] [r]
WHERE
	Lower([r].[CaseInsensitive]) LIKE N'testst%' ESCAPE N'~'

