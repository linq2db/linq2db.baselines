﻿BeforeExecute
-- SqlServer.2019 SqlServer.2017

DELETE [t1]
FROM
	[CollatedTable] [t1]

BeforeExecute
-- SqlServer.2019 SqlServer.2017
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
-- SqlServer.2019 SqlServer.2017

SELECT
	Count(*)
FROM
	[CollatedTable] [r]
WHERE
	Lower([r].[CaseSensitive]) LIKE N'%ststring' ESCAPE N'~'

BeforeExecute
-- SqlServer.2019 SqlServer.2017

SELECT
	Count(*)
FROM
	[CollatedTable] [r]
WHERE
	Lower([r].[CaseInsensitive]) LIKE N'%ststring' ESCAPE N'~'

BeforeExecute
-- SqlServer.2019 SqlServer.2017

SELECT
	Count(*)
FROM
	[CollatedTable] [r]
WHERE
	Lower([r].[CaseSensitive]) LIKE N'%ststring' ESCAPE N'~'

BeforeExecute
-- SqlServer.2019 SqlServer.2017

SELECT
	Count(*)
FROM
	[CollatedTable] [r]
WHERE
	Lower([r].[CaseInsensitive]) LIKE N'%ststring' ESCAPE N'~'

