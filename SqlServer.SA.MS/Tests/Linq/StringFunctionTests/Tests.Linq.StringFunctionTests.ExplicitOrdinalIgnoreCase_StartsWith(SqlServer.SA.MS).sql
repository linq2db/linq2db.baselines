-- SqlServer.SA.MS SqlServer.2019

DELETE [t1]
FROM
	[CollatedTable] [t1]

-- SqlServer.SA.MS SqlServer.2019
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

-- SqlServer.SA.MS SqlServer.2019

SELECT
	COUNT(*)
FROM
	[CollatedTable] [r]
WHERE
	Lower([r].[CaseSensitive]) LIKE N'testst%' ESCAPE N'~'

-- SqlServer.SA.MS SqlServer.2019

SELECT
	COUNT(*)
FROM
	[CollatedTable] [r]
WHERE
	Lower([r].[CaseInsensitive]) LIKE N'testst%' ESCAPE N'~'

-- SqlServer.SA.MS SqlServer.2019

SELECT
	COUNT(*)
FROM
	[CollatedTable] [r]
WHERE
	Lower([r].[CaseSensitive]) LIKE N'testst%' ESCAPE N'~'

-- SqlServer.SA.MS SqlServer.2019

SELECT
	COUNT(*)
FROM
	[CollatedTable] [r]
WHERE
	Lower([r].[CaseInsensitive]) LIKE N'testst%' ESCAPE N'~'

