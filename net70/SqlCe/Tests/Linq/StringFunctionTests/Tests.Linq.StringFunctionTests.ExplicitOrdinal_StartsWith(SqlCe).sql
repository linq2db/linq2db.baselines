BeforeExecute
-- SqlCe

DELETE FROM
	[CollatedTable]

BeforeExecute
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @CaseSensitive NVarChar(10) -- String
SET     @CaseSensitive = 'TestString'
DECLARE @CaseInsensitive NVarChar(10) -- String
SET     @CaseInsensitive = 'TestString'

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
-- SqlCe

SELECT
	Count(*)
FROM
	[CollatedTable] [r]
WHERE
	[r].[CaseSensitive] LIKE 'TestSt%' ESCAPE '~' AND Convert(VARBINARY(8000), SUBSTRING([r].[CaseSensitive], 1, 6)) = Convert(VARBINARY(8000), 'TestSt')

BeforeExecute
-- SqlCe

SELECT
	Count(*)
FROM
	[CollatedTable] [r]
WHERE
	[r].[CaseInsensitive] LIKE 'TestSt%' ESCAPE '~' AND
	Convert(VARBINARY(8000), SUBSTRING([r].[CaseInsensitive], 1, 6)) = Convert(VARBINARY(8000), 'TestSt')

BeforeExecute
-- SqlCe

SELECT
	Count(*)
FROM
	[CollatedTable] [r]
WHERE
	[r].[CaseSensitive] LIKE 'testst%' ESCAPE '~' AND Convert(VARBINARY(8000), SUBSTRING([r].[CaseSensitive], 1, 6)) = Convert(VARBINARY(8000), 'testst')

BeforeExecute
-- SqlCe

SELECT
	Count(*)
FROM
	[CollatedTable] [r]
WHERE
	[r].[CaseInsensitive] LIKE 'testst%' ESCAPE '~' AND
	Convert(VARBINARY(8000), SUBSTRING([r].[CaseInsensitive], 1, 6)) = Convert(VARBINARY(8000), 'testst')

