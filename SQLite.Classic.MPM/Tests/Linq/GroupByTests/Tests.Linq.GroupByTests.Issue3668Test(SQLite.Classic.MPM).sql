BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @id  -- Int32
SET     @id = 1
DECLARE @name NVarChar(4) -- String
SET     @name = 'test'

SELECT
	[m_1].[Key_1],
	[d].[FirstName],
	[d].[PersonID],
	[d].[LastName],
	[d].[MiddleName],
	[d].[Gender]
FROM
	(
		SELECT DISTINCT
			[t1].[Key_1]
		FROM
			(
				SELECT
					[x].[PersonID] as [Key_1]
				FROM
					[Person] [x]
				WHERE
					[x].[PersonID] = @id AND [x].[LastName] <> @name OR
					[x].[FirstName] <> @name AND [x].[PersonID] - 1 = @id
				GROUP BY
					[x].[PersonID]
			) [t1]
	) [m_1]
		INNER JOIN [Person] [d] ON [m_1].[Key_1] = [d].[PersonID]
WHERE
	[d].[PersonID] = @id AND [d].[LastName] <> @name OR
	[d].[FirstName] <> @name AND [d].[PersonID] - 1 = @id

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
	[x].[PersonID] = @id AND [x].[LastName] <> @name OR
	[x].[FirstName] <> @name AND [x].[PersonID] - 1 = @id
GROUP BY
	[x].[PersonID]

