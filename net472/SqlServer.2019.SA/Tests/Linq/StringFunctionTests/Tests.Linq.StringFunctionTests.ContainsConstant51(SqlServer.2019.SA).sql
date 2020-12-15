BeforeExecute
-- SqlServer.2019.SA SqlServer.2017
DECLARE @ps_1 NVarChar(4000) -- String
SET     @ps_1 = N'%~[%'

SELECT
	[p].[FirstName],
	[p].[PersonID],
	[p].[LastName],
	[p].[MiddleName],
	[p].[Gender]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1 AND N'123[456' LIKE @ps_1 ESCAPE N'~'

