BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
DECLARE @s NVarChar(4000) -- String
SET     @s = N'123n456'

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND @s LIKE N'%n%' ESCAPE N'~'

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
DECLARE @s NVarChar(4000) -- String
SET     @s = N'123n456'

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND @s NOT LIKE N'%n%' ESCAPE N'~'

