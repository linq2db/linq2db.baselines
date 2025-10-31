BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.2022
DECLARE @p [dbo].[TestTableType] -- Structured -- Object
SET     @p = 

SELECT
	[m_1].[PersonID],
	[d].[PersonID]
FROM
	[Person] [m_1]
		INNER JOIN [Person] [d] ON [d].[PersonID] > [m_1].[PersonID]
WHERE
	[m_1].[PersonID] IN (
		SELECT
			[x].[Id]
		FROM
			@p [x]
	)

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.2022
DECLARE @p [dbo].[TestTableType] -- Structured -- Object
SET     @p = 

SELECT
	[p1].[PersonID]
FROM
	[Person] [p1]
WHERE
	[p1].[PersonID] IN (
		SELECT
			[x].[Id]
		FROM
			@p [x]
	)

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.2022
DECLARE @p [dbo].[TestTableType] -- Structured -- Object
SET     @p = 

SELECT
	[m_1].[PersonID],
	[d].[PersonID]
FROM
	[Person] [m_1]
		INNER JOIN [Person] [d] ON [d].[PersonID] > [m_1].[PersonID]
WHERE
	[m_1].[PersonID] IN (
		SELECT
			[x].[Id]
		FROM
			@p [x]
	)

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.2022
DECLARE @p [dbo].[TestTableType] -- Structured -- Object
SET     @p = 

SELECT
	[p1].[PersonID]
FROM
	[Person] [p1]
WHERE
	[p1].[PersonID] IN (
		SELECT
			[x].[Id]
		FROM
			@p [x]
	)

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.2022
DECLARE @p [dbo].[TestTableType] -- Structured -- Object
SET     @p = 

SELECT
	[m_1].[PersonID],
	[d].[PersonID]
FROM
	[Person] [m_1]
		INNER JOIN [Person] [d] ON [d].[PersonID] > [m_1].[PersonID]
WHERE
	[m_1].[PersonID] IN (
		SELECT
			[x].[Id]
		FROM
			@p [x]
	)

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.2022
DECLARE @p [dbo].[TestTableType] -- Structured -- Object
SET     @p = 

SELECT
	[p1].[PersonID]
FROM
	[Person] [p1]
WHERE
	[p1].[PersonID] IN (
		SELECT
			[x].[Id]
		FROM
			@p [x]
	)

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.2022
DECLARE @p [dbo].[TestTableType] -- Structured -- Object
SET     @p = 

SELECT
	[m_1].[PersonID],
	[d].[PersonID]
FROM
	[Person] [m_1]
		INNER JOIN [Person] [d] ON [d].[PersonID] > [m_1].[PersonID]
WHERE
	[m_1].[PersonID] IN (
		SELECT
			[x].[Id]
		FROM
			@p [x]
	)

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.2022
DECLARE @p [dbo].[TestTableType] -- Structured -- Object
SET     @p = 

SELECT
	[p1].[PersonID]
FROM
	[Person] [p1]
WHERE
	[p1].[PersonID] IN (
		SELECT
			[x].[Id]
		FROM
			@p [x]
	)

