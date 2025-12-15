-- SqlCe

DELETE FROM
	[CollatedTable]

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

-- SqlCe

SELECT
	COUNT(*) as [Count_1]
FROM
	[CollatedTable] [r]
WHERE
	Convert(VARBINARY(8000), SUBSTRING([r].[CaseSensitive], 1, 6)) = Convert(VARBINARY(8000), 'TestSt')

-- SqlCe

SELECT
	COUNT(*) as [Count_1]
FROM
	[CollatedTable] [r]
WHERE
	Convert(VARBINARY(8000), SUBSTRING([r].[CaseInsensitive], 1, 6)) = Convert(VARBINARY(8000), 'TestSt')

-- SqlCe

SELECT
	COUNT(*) as [Count_1]
FROM
	[CollatedTable] [r]
WHERE
	Convert(VARBINARY(8000), SUBSTRING([r].[CaseSensitive], 1, 6)) = Convert(VARBINARY(8000), 'testst')

-- SqlCe

SELECT
	COUNT(*) as [Count_1]
FROM
	[CollatedTable] [r]
WHERE
	Convert(VARBINARY(8000), SUBSTRING([r].[CaseInsensitive], 1, 6)) = Convert(VARBINARY(8000), 'testst')

