BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
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

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @input NVarChar(4000) -- String
SET     @input = N'%test%'

SELECT
	[p].[FirstName],
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	Lower([p].[FirstName]) LIKE @input ESCAPE N'~'

