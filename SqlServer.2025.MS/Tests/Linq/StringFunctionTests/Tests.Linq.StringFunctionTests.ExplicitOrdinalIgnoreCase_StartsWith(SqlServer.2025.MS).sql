﻿BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

DELETE [t1]
FROM
	[CollatedTable] [t1]

BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022
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
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	COUNT(*)
FROM
	[CollatedTable] [r]
WHERE
	Lower([r].[CaseSensitive]) LIKE N'testst%' ESCAPE N'~'

BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	COUNT(*)
FROM
	[CollatedTable] [r]
WHERE
	Lower([r].[CaseInsensitive]) LIKE N'testst%' ESCAPE N'~'

BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	COUNT(*)
FROM
	[CollatedTable] [r]
WHERE
	Lower([r].[CaseSensitive]) LIKE N'testst%' ESCAPE N'~'

BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	COUNT(*)
FROM
	[CollatedTable] [r]
WHERE
	Lower([r].[CaseInsensitive]) LIKE N'testst%' ESCAPE N'~'

