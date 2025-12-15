-- SqlServer.Contained SqlServer.2019

DELETE [t1]
FROM
	[CollatedTable] [t1]

-- SqlServer.Contained SqlServer.2019
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

-- SqlServer.Contained SqlServer.2019

SELECT
	COUNT(*)
FROM
	[CollatedTable] [r]
WHERE
	[r].[CaseSensitive] LIKE N'%stString' ESCAPE N'~' AND
	Convert(VarBinary(8000), RIGHT([r].[CaseSensitive], LEN(N'stString'))) = Convert(VarBinary(8000), N'stString')

-- SqlServer.Contained SqlServer.2019

SELECT
	COUNT(*)
FROM
	[CollatedTable] [r]
WHERE
	[r].[CaseInsensitive] LIKE N'%stString' ESCAPE N'~' AND
	Convert(VarBinary(8000), RIGHT([r].[CaseInsensitive], LEN(N'stString'))) = Convert(VarBinary(8000), N'stString')

-- SqlServer.Contained SqlServer.2019

SELECT
	COUNT(*)
FROM
	[CollatedTable] [r]
WHERE
	[r].[CaseSensitive] LIKE N'%ststring' ESCAPE N'~' AND
	Convert(VarBinary(8000), RIGHT([r].[CaseSensitive], LEN(N'ststring'))) = Convert(VarBinary(8000), N'ststring')

-- SqlServer.Contained SqlServer.2019

SELECT
	COUNT(*)
FROM
	[CollatedTable] [r]
WHERE
	[r].[CaseInsensitive] LIKE N'%ststring' ESCAPE N'~' AND
	Convert(VarBinary(8000), RIGHT([r].[CaseInsensitive], LEN(N'ststring'))) = Convert(VarBinary(8000), N'ststring')

