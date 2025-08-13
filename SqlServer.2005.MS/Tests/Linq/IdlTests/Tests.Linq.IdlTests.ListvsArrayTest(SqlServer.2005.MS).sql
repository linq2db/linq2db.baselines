BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[x].[PersonID]
FROM
	[Person] [x]
WHERE
	[x].[FirstName] IN (N'John')

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005
DECLARE @st NVarChar(4000) -- String
SET     @st = N'John'

SELECT
	[x].[PersonID]
FROM
	[Person] [x]
WHERE
	[x].[FirstName] IN (@st)

