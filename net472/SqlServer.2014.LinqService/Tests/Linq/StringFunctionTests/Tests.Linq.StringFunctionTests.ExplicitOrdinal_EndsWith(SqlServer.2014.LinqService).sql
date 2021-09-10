﻿BeforeExecute
-- SqlServer.2014 SqlServer.2012

DELETE [t1]
FROM
	[CollatedTable] [t1]

BeforeExecute
-- SqlServer.2014 SqlServer.2012
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
-- SqlServer.2014 SqlServer.2012

SELECT
	Count(*)
FROM
	[CollatedTable] [r]
WHERE
	[r].[CaseSensitive] LIKE N'%stString' ESCAPE N'~' AND
	Convert(VarBinary(8000), RIGHT([r].[CaseSensitive], 8)) = Convert(VarBinary(8000), N'stString')

BeforeExecute
-- SqlServer.2014 SqlServer.2012

SELECT
	Count(*)
FROM
	[CollatedTable] [r]
WHERE
	[r].[CaseInsensitive] LIKE N'%stString' ESCAPE N'~' AND
	Convert(VarBinary(8000), RIGHT([r].[CaseInsensitive], 8)) = Convert(VarBinary(8000), N'stString')

BeforeExecute
-- SqlServer.2014 SqlServer.2012

SELECT
	Count(*)
FROM
	[CollatedTable] [r]
WHERE
	[r].[CaseSensitive] LIKE N'%ststring' ESCAPE N'~' AND
	Convert(VarBinary(8000), RIGHT([r].[CaseSensitive], 8)) = Convert(VarBinary(8000), N'ststring')

BeforeExecute
-- SqlServer.2014 SqlServer.2012

SELECT
	Count(*)
FROM
	[CollatedTable] [r]
WHERE
	[r].[CaseInsensitive] LIKE N'%ststring' ESCAPE N'~' AND
	Convert(VarBinary(8000), RIGHT([r].[CaseInsensitive], 8)) = Convert(VarBinary(8000), N'ststring')

