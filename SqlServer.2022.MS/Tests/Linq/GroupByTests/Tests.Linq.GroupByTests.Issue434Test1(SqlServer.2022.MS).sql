-- SqlServer.2022.MS SqlServer.2022
DECLARE @input NVarChar(4000) -- String
SET     @input = N'%test%'

SELECT
	[m_1].[PersonID],
	[d].[PersonID],
	[d].[Diagnosis]
FROM
	[Person] [m_1]
		INNER JOIN [Patient] [d] ON [m_1].[PersonID] = [d].[PersonID]
WHERE
	Lower([m_1].[FirstName]) LIKE @input ESCAPE N'~'

-- SqlServer.2022.MS SqlServer.2022
DECLARE @input NVarChar(4000) -- String
SET     @input = N'%test%'

SELECT
	[p].[FirstName],
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	Lower([p].[FirstName]) LIKE @input ESCAPE N'~'

