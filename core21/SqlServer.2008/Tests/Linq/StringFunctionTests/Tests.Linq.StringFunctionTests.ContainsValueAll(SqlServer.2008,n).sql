BeforeExecute
-- SqlServer.2008
DECLARE @s_1 NVarChar(4000) -- String
SET     @s_1 = N'123n456'

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND @s_1 LIKE N'%n%' ESCAPE N'~'

BeforeExecute
-- SqlServer.2008
DECLARE @s_1 NVarChar(4000) -- String
SET     @s_1 = N'123n456'

SELECT
	Count(*)
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND @s_1 NOT LIKE N'%n%' ESCAPE N'~'

