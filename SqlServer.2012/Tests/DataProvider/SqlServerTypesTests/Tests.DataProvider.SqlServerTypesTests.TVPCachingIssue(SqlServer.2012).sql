BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.2012
DECLARE @table [dbo].[TestTableType] -- Structured -- Object
SET     @table = 

SELECT
	[m_1].[ID],
	[d].[PersonID]
FROM
	(
		SELECT DISTINCT
			[p].[PersonID] as [ID]
		FROM
			[Person] [p]
		WHERE
			[p].[PersonID] IN (
				SELECT
					[x].[Id]
				FROM
					@table [x]
			)
	) [m_1]
		INNER JOIN [Person] [d] ON [d].[PersonID] > [m_1].[ID]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.2012
DECLARE @table [dbo].[TestTableType] -- Structured -- Object
SET     @table = 

SELECT
	[p1].[PersonID]
FROM
	[Person] [p1]
WHERE
	[p1].[PersonID] IN (
		SELECT
			[x].[Id]
		FROM
			@table [x]
	)

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.2012
DECLARE @table [dbo].[TestTableType] -- Structured -- Object
SET     @table = 

SELECT
	[m_1].[ID],
	[d].[PersonID]
FROM
	(
		SELECT DISTINCT
			[p].[PersonID] as [ID]
		FROM
			[Person] [p]
		WHERE
			[p].[PersonID] IN (
				SELECT
					[x].[Id]
				FROM
					@table [x]
			)
	) [m_1]
		INNER JOIN [Person] [d] ON [d].[PersonID] > [m_1].[ID]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.2012
DECLARE @table [dbo].[TestTableType] -- Structured -- Object
SET     @table = 

SELECT
	[p1].[PersonID]
FROM
	[Person] [p1]
WHERE
	[p1].[PersonID] IN (
		SELECT
			[x].[Id]
		FROM
			@table [x]
	)

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.2012
DECLARE @table [dbo].[TestTableType] -- Structured -- Object
SET     @table = 

SELECT
	[m_1].[ID],
	[d].[PersonID]
FROM
	(
		SELECT DISTINCT
			[p].[PersonID] as [ID]
		FROM
			[Person] [p]
		WHERE
			[p].[PersonID] IN (
				SELECT
					[x].[Id]
				FROM
					@table [x]
			)
	) [m_1]
		INNER JOIN [Person] [d] ON [d].[PersonID] > [m_1].[ID]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.2012
DECLARE @table [dbo].[TestTableType] -- Structured -- Object
SET     @table = 

SELECT
	[p1].[PersonID]
FROM
	[Person] [p1]
WHERE
	[p1].[PersonID] IN (
		SELECT
			[x].[Id]
		FROM
			@table [x]
	)

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.2012
DECLARE @table [dbo].[TestTableType] -- Structured -- Object
SET     @table = 

SELECT
	[m_1].[ID],
	[d].[PersonID]
FROM
	(
		SELECT DISTINCT
			[p].[PersonID] as [ID]
		FROM
			[Person] [p]
		WHERE
			[p].[PersonID] IN (
				SELECT
					[x].[Id]
				FROM
					@table [x]
			)
	) [m_1]
		INNER JOIN [Person] [d] ON [d].[PersonID] > [m_1].[ID]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.2012
DECLARE @table [dbo].[TestTableType] -- Structured -- Object
SET     @table = 

SELECT
	[p1].[PersonID]
FROM
	[Person] [p1]
WHERE
	[p1].[PersonID] IN (
		SELECT
			[x].[Id]
		FROM
			@table [x]
	)

