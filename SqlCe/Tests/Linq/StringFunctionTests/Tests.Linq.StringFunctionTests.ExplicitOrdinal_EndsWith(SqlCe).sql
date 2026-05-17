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
	Convert(VARBINARY(8000), SUBSTRING([r].[CaseSensitive], LEN([r].[CaseSensitive] + '.') - 8, 8)) = Convert(VARBINARY(8000), 'stString')

-- SqlCe

SELECT
	COUNT(*) as [Count_1]
FROM
	[CollatedTable] [r]
WHERE
	Convert(VARBINARY(8000), SUBSTRING([r].[CaseInsensitive], LEN([r].[CaseInsensitive] + '.') - 8, 8)) = Convert(VARBINARY(8000), 'stString')

-- SqlCe

SELECT
	COUNT(*) as [Count_1]
FROM
	[CollatedTable] [r]
WHERE
	Convert(VARBINARY(8000), SUBSTRING([r].[CaseSensitive], LEN([r].[CaseSensitive] + '.') - 8, 8)) = Convert(VARBINARY(8000), 'ststring')

-- SqlCe

SELECT
	COUNT(*) as [Count_1]
FROM
	[CollatedTable] [r]
WHERE
	Convert(VARBINARY(8000), SUBSTRING([r].[CaseInsensitive], LEN([r].[CaseInsensitive] + '.') - 8, 8)) = Convert(VARBINARY(8000), 'ststring')

