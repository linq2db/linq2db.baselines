BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.2012
DECLARE @table [dbo].[TestTableType] -- Structured -- Object
SET     @table = 

SELECT
	[key_data_result].[PersonID],
	[detail].[PersonID]
FROM
	(
		SELECT DISTINCT
			[p].[PersonID]
		FROM
			[Person] [p]
		WHERE
			[p].[PersonID] IN (
				SELECT
					[x].[Id]
				FROM
					@table [x]
			)
	) [key_data_result]
		INNER JOIN [Person] [detail] ON [detail].[PersonID] > [key_data_result].[PersonID]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.2012
DECLARE @table [dbo].[TestTableType] -- Structured -- Object
SET     @table = 

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] IN (
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
	[key_data_result].[PersonID],
	[detail].[PersonID]
FROM
	(
		SELECT DISTINCT
			[p].[PersonID]
		FROM
			[Person] [p]
		WHERE
			[p].[PersonID] IN (
				SELECT
					[x].[Id]
				FROM
					@table [x]
			)
	) [key_data_result]
		INNER JOIN [Person] [detail] ON [detail].[PersonID] > [key_data_result].[PersonID]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.2012
DECLARE @table [dbo].[TestTableType] -- Structured -- Object
SET     @table = 

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] IN (
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
	[key_data_result].[PersonID],
	[detail].[PersonID]
FROM
	(
		SELECT DISTINCT
			[p].[PersonID]
		FROM
			[Person] [p]
		WHERE
			[p].[PersonID] IN (
				SELECT
					[x].[Id]
				FROM
					@table [x]
			)
	) [key_data_result]
		INNER JOIN [Person] [detail] ON [detail].[PersonID] > [key_data_result].[PersonID]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.2012
DECLARE @table [dbo].[TestTableType] -- Structured -- Object
SET     @table = 

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] IN (
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
	[key_data_result].[PersonID],
	[detail].[PersonID]
FROM
	(
		SELECT DISTINCT
			[p].[PersonID]
		FROM
			[Person] [p]
		WHERE
			[p].[PersonID] IN (
				SELECT
					[x].[Id]
				FROM
					@table [x]
			)
	) [key_data_result]
		INNER JOIN [Person] [detail] ON [detail].[PersonID] > [key_data_result].[PersonID]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.2012
DECLARE @table [dbo].[TestTableType] -- Structured -- Object
SET     @table = 

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] IN (
		SELECT
			[x].[Id]
		FROM
			@table [x]
	)

