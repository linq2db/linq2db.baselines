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
	COUNT(*) as [Count_1]
FROM
	[CollatedTable] [r]
WHERE
	Convert(VARBINARY(8000), SUBSTRING([r].[CaseSensitive], 1, 6)) = Convert(VARBINARY(8000), 'TestSt')

BeforeExecute
-- SqlCe

SELECT
	COUNT(*) as [Count_1]
FROM
	[CollatedTable] [r]
WHERE
	Convert(VARBINARY(8000), SUBSTRING([r].[CaseInsensitive], 1, 6)) = Convert(VARBINARY(8000), 'TestSt')

BeforeExecute
-- SqlCe

SELECT
	COUNT(*) as [Count_1]
FROM
	[CollatedTable] [r]
WHERE
	Convert(VARBINARY(8000), SUBSTRING([r].[CaseSensitive], 1, 6)) = Convert(VARBINARY(8000), 'testst')

BeforeExecute
-- SqlCe

SELECT
	COUNT(*) as [Count_1]
FROM
	[CollatedTable] [r]
WHERE
	Convert(VARBINARY(8000), SUBSTRING([r].[CaseInsensitive], 1, 6)) = Convert(VARBINARY(8000), 'testst')

