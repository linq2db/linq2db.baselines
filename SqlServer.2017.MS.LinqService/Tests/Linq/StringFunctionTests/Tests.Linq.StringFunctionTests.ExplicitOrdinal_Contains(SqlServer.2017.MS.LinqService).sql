BeforeExecute
-- SqlServer.2017.MS SqlServer.2017 (asynchronously)

DELETE [t1]
FROM
	[CollatedTable] [t1]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017 (asynchronously)
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
-- SqlServer.2017.MS SqlServer.2017 (asynchronously)

SELECT
	COUNT(*)
FROM
	[CollatedTable] [r]
WHERE
	[r].[CaseSensitive] LIKE N'%stSt%' ESCAPE N'~' AND
	CHARINDEX(Convert(VarBinary(8000), N'stSt'), Convert(VarBinary(8000), [r].[CaseSensitive])) > 0

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017 (asynchronously)

SELECT
	COUNT(*)
FROM
	[CollatedTable] [r]
WHERE
	[r].[CaseInsensitive] LIKE N'%stSt%' ESCAPE N'~' AND
	CHARINDEX(Convert(VarBinary(8000), N'stSt'), Convert(VarBinary(8000), [r].[CaseInsensitive])) > 0

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017 (asynchronously)

SELECT
	COUNT(*)
FROM
	[CollatedTable] [r]
WHERE
	[r].[CaseSensitive] LIKE N'%stst%' ESCAPE N'~' AND
	CHARINDEX(Convert(VarBinary(8000), N'stst'), Convert(VarBinary(8000), [r].[CaseSensitive])) > 0

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017 (asynchronously)

SELECT
	COUNT(*)
FROM
	[CollatedTable] [r]
WHERE
	[r].[CaseInsensitive] LIKE N'%stst%' ESCAPE N'~' AND
	CHARINDEX(Convert(VarBinary(8000), N'stst'), Convert(VarBinary(8000), [r].[CaseInsensitive])) > 0

