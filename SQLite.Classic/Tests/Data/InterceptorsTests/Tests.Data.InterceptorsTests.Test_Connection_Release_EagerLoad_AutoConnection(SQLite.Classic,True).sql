BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender],
	[a_Patient].[PersonID],
	[a_Patient].[Diagnosis]
FROM
	[Person] [t1]
		LEFT JOIN [Patient] [a_Patient] ON [t1].[PersonID] = [a_Patient].[PersonID]

BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[m_1].[ParentID],
	[d].[ParentID],
	[d].[ChildID]
FROM
	(
		SELECT DISTINCT
			[t1].[ParentID]
		FROM
			[Parent] [t1]
	) [m_1]
		INNER JOIN [Child] [d] ON [m_1].[ParentID] = [d].[ParentID]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender],
	[a_Patient].[PersonID],
	[a_Patient].[Diagnosis]
FROM
	[Person] [t1]
		LEFT JOIN [Patient] [a_Patient] ON [t1].[PersonID] = [a_Patient].[PersonID]

BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[m_1].[ParentID],
	[d].[ParentID],
	[d].[ChildID]
FROM
	(
		SELECT DISTINCT
			[t1].[ParentID]
		FROM
			[Parent] [t1]
	) [m_1]
		INNER JOIN [Child] [d] ON [m_1].[ParentID] = [d].[ParentID]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender],
	[a_Patient].[PersonID],
	[a_Patient].[Diagnosis]
FROM
	[Person] [t1]
		LEFT JOIN [Patient] [a_Patient] ON [t1].[PersonID] = [a_Patient].[PersonID]
LIMIT 1

BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[m_1].[ParentID],
	[d].[ParentID],
	[d].[ChildID]
FROM
	(
		SELECT
			[t1].[ParentID]
		FROM
			[Parent] [t1]
		LIMIT 1
	) [m_1]
		INNER JOIN [Child] [d] ON [m_1].[ParentID] = [d].[ParentID]

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]
LIMIT 1

BeforeExecute
DisposeTransaction
BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

SELECT
	[t1].[FirstName],
	[t1].[PersonID],
	[t1].[LastName],
	[t1].[MiddleName],
	[t1].[Gender],
	[a_Patient].[PersonID],
	[a_Patient].[Diagnosis]
FROM
	[Person] [t1]
		LEFT JOIN [Patient] [a_Patient] ON [t1].[PersonID] = [a_Patient].[PersonID]
LIMIT 1

BeforeExecute
BeginTransactionAsync(Serializable)
BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

SELECT
	[m_1].[ParentID],
	[d].[ParentID],
	[d].[ChildID]
FROM
	(
		SELECT
			[t1].[ParentID]
		FROM
			[Parent] [t1]
		LIMIT 1
	) [m_1]
		INNER JOIN [Child] [d] ON [m_1].[ParentID] = [d].[ParentID]

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]
LIMIT 1

BeforeExecute
DisposeTransactionAsync
