BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @p NVarChar(4000) -- String
SET     @p = N'%test%'

SELECT
	[m_1].[PersonID],
	[d].[PersonID],
	[d].[Diagnosis]
FROM
	[Person] [m_1]
		INNER JOIN [Patient] [d] ON [m_1].[PersonID] = [d].[PersonID]
WHERE
	Lower([m_1].[FirstName]) LIKE @p ESCAPE N'~'

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @p NVarChar(4000) -- String
SET     @p = N'%test%'

SELECT
	[p].[FirstName],
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	Lower([p].[FirstName]) LIKE @p ESCAPE N'~'

