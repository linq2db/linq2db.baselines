BeforeExecute
-- SqlServer.2025 SqlServer.2022 (asynchronously)

DELETE [t1]
FROM
	[CollatedTable] [t1]

BeforeExecute
-- SqlServer.2025 SqlServer.2022 (asynchronously)
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
-- SqlServer.2025 SqlServer.2022 (asynchronously)

SELECT
	COUNT(*)
FROM
	[CollatedTable] [r]
WHERE
	[r].[CaseSensitive] LIKE N'TestSt%' ESCAPE N'~' AND
	Convert(VarBinary(8000), LEFT([r].[CaseSensitive], LEN(N'TestSt'))) = Convert(VarBinary(8000), N'TestSt')

BeforeExecute
-- SqlServer.2025 SqlServer.2022 (asynchronously)

SELECT
	COUNT(*)
FROM
	[CollatedTable] [r]
WHERE
	[r].[CaseInsensitive] LIKE N'TestSt%' ESCAPE N'~' AND
	Convert(VarBinary(8000), LEFT([r].[CaseInsensitive], LEN(N'TestSt'))) = Convert(VarBinary(8000), N'TestSt')

BeforeExecute
-- SqlServer.2025 SqlServer.2022 (asynchronously)

SELECT
	COUNT(*)
FROM
	[CollatedTable] [r]
WHERE
	[r].[CaseSensitive] LIKE N'testst%' ESCAPE N'~' AND
	Convert(VarBinary(8000), LEFT([r].[CaseSensitive], LEN(N'testst'))) = Convert(VarBinary(8000), N'testst')

BeforeExecute
-- SqlServer.2025 SqlServer.2022 (asynchronously)

SELECT
	COUNT(*)
FROM
	[CollatedTable] [r]
WHERE
	[r].[CaseInsensitive] LIKE N'testst%' ESCAPE N'~' AND
	Convert(VarBinary(8000), LEFT([r].[CaseInsensitive], LEN(N'testst'))) = Convert(VarBinary(8000), N'testst')

