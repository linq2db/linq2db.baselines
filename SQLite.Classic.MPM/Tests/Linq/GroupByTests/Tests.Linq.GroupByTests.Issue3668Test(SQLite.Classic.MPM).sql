BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @id  -- Int32
SET     @id = 1
DECLARE @name NVarChar(4) -- String
SET     @name = 'test'

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
	([m_1].[PersonID] = @id AND [m_1].[LastName] <> @name OR [m_1].[FirstName] <> @name AND [m_1].[PersonID] = 2) AND
	([m_1].[PersonID] = @id AND [m_1].[LastName] <> @name OR [m_1].[FirstName] <> @name AND [m_1].[PersonID] = 2)

BeforeExecute
DisposeTransaction
BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @id  -- Int32
SET     @id = 1
DECLARE @name NVarChar(4) -- String
SET     @name = 'test'

SELECT
	[x].[PersonID]
FROM
	[Person] [x]
WHERE
	([x].[PersonID] = @id AND [x].[LastName] <> @name OR [x].[FirstName] <> @name AND [x].[PersonID] = 2)
GROUP BY
	[x].[PersonID]

