BeforeExecute
-- SqlServer.2016.MS SqlServer.2016
DECLARE @ps NVarChar(4000) -- String
SET     @ps = N'%~[%'

SELECT
	COUNT(*)
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND N'123[456' LIKE @ps ESCAPE N'~'

