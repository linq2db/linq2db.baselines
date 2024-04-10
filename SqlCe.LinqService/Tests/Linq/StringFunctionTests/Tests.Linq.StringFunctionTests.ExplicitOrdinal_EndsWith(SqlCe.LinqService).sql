﻿BeforeExecute
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
	Count(*) as [COUNT_1]
FROM
	[CollatedTable] [r]
WHERE
	Convert(VARBINARY(8000), SUBSTRING([r].[CaseSensitive], LEN([r].[CaseSensitive]) - 7, 8)) = Convert(VARBINARY(8000), 'stString')

BeforeExecute
-- SqlCe

SELECT
	Count(*) as [COUNT_1]
FROM
	[CollatedTable] [r]
WHERE
	Convert(VARBINARY(8000), SUBSTRING([r].[CaseInsensitive], LEN([r].[CaseInsensitive]) - 7, 8)) = Convert(VARBINARY(8000), 'stString')

BeforeExecute
-- SqlCe

SELECT
	Count(*) as [COUNT_1]
FROM
	[CollatedTable] [r]
WHERE
	Convert(VARBINARY(8000), SUBSTRING([r].[CaseSensitive], LEN([r].[CaseSensitive]) - 7, 8)) = Convert(VARBINARY(8000), 'ststring')

BeforeExecute
-- SqlCe

SELECT
	Count(*) as [COUNT_1]
FROM
	[CollatedTable] [r]
WHERE
	Convert(VARBINARY(8000), SUBSTRING([r].[CaseInsensitive], LEN([r].[CaseInsensitive]) - 7, 8)) = Convert(VARBINARY(8000), 'ststring')

