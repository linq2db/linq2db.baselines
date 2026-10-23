-- SqlServer.2012.MS SqlServer.2012
DECLARE @s NVarChar(4000) -- String
SET     @s = N'123[456'

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND @s LIKE N'%~[%' ESCAPE N'~'

-- SqlServer.2012.MS SqlServer.2012
DECLARE @s NVarChar(4000) -- String
SET     @s = N'123[456'

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND @s NOT LIKE N'%~[%' ESCAPE N'~'

