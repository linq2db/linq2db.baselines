BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @s NVarChar(4000) -- String
SET     @s = N'123]456'
DECLARE @toTest_1 NVarChar(4000) -- String
SET     @toTest_1 = N'%~]%'

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND @s LIKE @toTest_1 ESCAPE N'~'

