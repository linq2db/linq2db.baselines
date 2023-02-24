BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @table_1 [dbo].[TestTableType] -- Structured -- Object
SET     @table_1 = 

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
					@table_1 [x]
			)
	) [key_data_result]
		INNER JOIN [Person] [detail] ON [detail].[PersonID] > [key_data_result].[PersonID]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @table_1 [dbo].[TestTableType] -- Structured -- Object
SET     @table_1 = 

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] IN (
		SELECT
			[x].[Id]
		FROM
			@table_1 [x]
	)

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @table_1 [dbo].[TestTableType] -- Structured -- Object
SET     @table_1 = 

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
					@table_1 [x]
			)
	) [key_data_result]
		INNER JOIN [Person] [detail] ON [detail].[PersonID] > [key_data_result].[PersonID]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @table_1 [dbo].[TestTableType] -- Structured -- Object
SET     @table_1 = 

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] IN (
		SELECT
			[x].[Id]
		FROM
			@table_1 [x]
	)

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @table_1 [dbo].[TestTableType] -- Structured -- Object
SET     @table_1 = 

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
					@table_1 [x]
			)
	) [key_data_result]
		INNER JOIN [Person] [detail] ON [detail].[PersonID] > [key_data_result].[PersonID]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @table_1 [dbo].[TestTableType] -- Structured -- Object
SET     @table_1 = 

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] IN (
		SELECT
			[x].[Id]
		FROM
			@table_1 [x]
	)

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @table_1 [dbo].[TestTableType] -- Structured -- Object
SET     @table_1 = 

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
					@table_1 [x]
			)
	) [key_data_result]
		INNER JOIN [Person] [detail] ON [detail].[PersonID] > [key_data_result].[PersonID]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.2014.MS SqlServer.2014
DECLARE @table_1 [dbo].[TestTableType] -- Structured -- Object
SET     @table_1 = 

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] IN (
		SELECT
			[x].[Id]
		FROM
			@table_1 [x]
	)

