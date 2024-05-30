BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlCe
DECLARE @p NVarChar(6) -- String
SET     @p = '%test%'

SELECT
	[m_1].[PersonID] as [ID],
	[d].[PersonID],
	[d].[Diagnosis]
FROM
	[Person] [m_1]
		INNER JOIN [Patient] [d] ON [m_1].[PersonID] = [d].[PersonID]
WHERE
	Lower([m_1].[FirstName]) LIKE @p ESCAPE '~'

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlCe
DECLARE @p NVarChar(6) -- String
SET     @p = '%test%'

SELECT
	[p].[FirstName] as [Name],
	[p].[PersonID] as [ID]
FROM
	[Person] [p]
WHERE
	Lower([p].[FirstName]) LIKE @p ESCAPE '~'

