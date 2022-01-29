BeforeExecute
-- SqlServer.2014
DECLARE @s NVarChar(4000) -- String
SET     @s = N'123n456'
DECLARE @toTest_1 NVarChar(4000) -- String
SET     @toTest_1 = N'%n%'

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND @s LIKE @toTest_1 ESCAPE N'~'

