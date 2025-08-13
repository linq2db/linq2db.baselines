BeforeExecute
BeginTransaction(Unspecified)
BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @id Int -- Int32
SET     @id = 1
DECLARE @name NVarChar(4) -- String
SET     @name = 'test'
DECLARE @name NVarChar(4) -- String
SET     @name = 'test'
DECLARE @id Int -- Int32
SET     @id = 1

SELECT
	[m_1].[PersonID],
	[m_1].[FirstName],
	[m_1].[PersonID],
	[m_1].[LastName],
	[m_1].[MiddleName],
	[m_1].[Gender]
FROM
	[Person] [m_1]
WHERE
	[m_1].[PersonID] = ? AND [m_1].[LastName] <> ? OR [m_1].[FirstName] <> ? AND [m_1].[PersonID] - 1 = ?

BeforeExecute
DisposeTransaction
BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @id Int -- Int32
SET     @id = 1
DECLARE @name NVarChar(4) -- String
SET     @name = 'test'
DECLARE @name NVarChar(4) -- String
SET     @name = 'test'
DECLARE @id Int -- Int32
SET     @id = 1

SELECT
	[x].[PersonID]
FROM
	[Person] [x]
WHERE
	[x].[PersonID] = ? AND [x].[LastName] <> ? OR [x].[FirstName] <> ? AND [x].[PersonID] - 1 = ?
GROUP BY
	[x].[PersonID]

