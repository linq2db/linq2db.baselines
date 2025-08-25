BeforeExecute
-- SqlServer.2005.MS SqlServer.2005 (asynchronously)

DELETE [t1]
FROM
	[CollatedTable] [t1]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005 (asynchronously)
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

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005 (asynchronously)

SELECT
	COUNT(*)
FROM
	[CollatedTable] [r]
WHERE
	[r].[CaseSensitive] LIKE N'%stString' ESCAPE N'~' AND
	Convert(VarBinary(8000), RIGHT([r].[CaseSensitive], LEN(N'stString'))) = Convert(VarBinary(8000), N'stString')

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005 (asynchronously)

SELECT
	COUNT(*)
FROM
	[CollatedTable] [r]
WHERE
	[r].[CaseInsensitive] LIKE N'%stString' ESCAPE N'~' AND
	Convert(VarBinary(8000), RIGHT([r].[CaseInsensitive], LEN(N'stString'))) = Convert(VarBinary(8000), N'stString')

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005 (asynchronously)

SELECT
	COUNT(*)
FROM
	[CollatedTable] [r]
WHERE
	[r].[CaseSensitive] LIKE N'%ststring' ESCAPE N'~' AND
	Convert(VarBinary(8000), RIGHT([r].[CaseSensitive], LEN(N'ststring'))) = Convert(VarBinary(8000), N'ststring')

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005 (asynchronously)

SELECT
	COUNT(*)
FROM
	[CollatedTable] [r]
WHERE
	[r].[CaseInsensitive] LIKE N'%ststring' ESCAPE N'~' AND
	Convert(VarBinary(8000), RIGHT([r].[CaseInsensitive], LEN(N'ststring'))) = Convert(VarBinary(8000), N'ststring')

