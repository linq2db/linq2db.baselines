BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.Contained SqlServer.2019
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
			EXISTS(
				SELECT
					*
				FROM
					@table_1 [x]
				WHERE
					[x].[Id] = [p].[PersonID]
			)
	) [key_data_result]
		INNER JOIN [Person] [detail] ON [detail].[PersonID] > [key_data_result].[PersonID]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @table_1 [dbo].[TestTableType] -- Structured -- Object
SET     @table_1 = 

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			@table_1 [x]
		WHERE
			[x].[Id] = [p].[PersonID]
	)

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.Contained SqlServer.2019
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
			EXISTS(
				SELECT
					*
				FROM
					@table_1 [x]
				WHERE
					[x].[Id] = [p].[PersonID]
			)
	) [key_data_result]
		INNER JOIN [Person] [detail] ON [detail].[PersonID] > [key_data_result].[PersonID]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @table_1 [dbo].[TestTableType] -- Structured -- Object
SET     @table_1 = 

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			@table_1 [x]
		WHERE
			[x].[Id] = [p].[PersonID]
	)

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.Contained SqlServer.2019
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
			EXISTS(
				SELECT
					*
				FROM
					@table_1 [x]
				WHERE
					[x].[Id] = [p].[PersonID]
			)
	) [key_data_result]
		INNER JOIN [Person] [detail] ON [detail].[PersonID] > [key_data_result].[PersonID]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @table_1 [dbo].[TestTableType] -- Structured -- Object
SET     @table_1 = 

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			@table_1 [x]
		WHERE
			[x].[Id] = [p].[PersonID]
	)

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- SqlServer.Contained SqlServer.2019
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
			EXISTS(
				SELECT
					*
				FROM
					@table_1 [x]
				WHERE
					[x].[Id] = [p].[PersonID]
			)
	) [key_data_result]
		INNER JOIN [Person] [detail] ON [detail].[PersonID] > [key_data_result].[PersonID]

BeforeExecute
DisposeTransaction
BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @table_1 [dbo].[TestTableType] -- Structured -- Object
SET     @table_1 = 

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			@table_1 [x]
		WHERE
			[x].[Id] = [p].[PersonID]
	)

