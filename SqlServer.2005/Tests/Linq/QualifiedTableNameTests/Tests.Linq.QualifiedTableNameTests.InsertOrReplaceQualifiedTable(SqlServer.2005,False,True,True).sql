-- SqlServer.2005
SELECT TOP (1)
	DB_NAME()
FROM
	[LinqDataTypes] [t1]

-- SqlServer.2005
SELECT TOP (1)
	SCHEMA_NAME()
FROM
	[LinqDataTypes] [t1]

-- SqlServer.2005
DECLARE @Value Int -- Int32
SET     @Value = 10
DECLARE @ID Int -- Int32
SET     @ID = 5

UPDATE
	[TestData].[dbo].[QualifiedNameTable]
SET
	[Value] = @Value
FROM
	[TestData].[dbo].[QualifiedNameTable] [t1]
WHERE
	[t1].[ID] = @ID

IF @@ROWCOUNT = 0
BEGIN
	INSERT INTO [TestData].[dbo].[QualifiedNameTable]
	(
		[ID],
		[Value]
	)
	VALUES
	(
		@ID,
		@Value
	)
END

-- SqlServer.2005
DECLARE @Value Int -- Int32
SET     @Value = 10
DECLARE @ID Int -- Int32
SET     @ID = 5

UPDATE
	[TestData].[dbo].[QualifiedNameTable]
SET
	[Value] = @Value
FROM
	[TestData].[dbo].[QualifiedNameTable] [t1]
WHERE
	[t1].[ID] = @ID

IF @@ROWCOUNT = 0
BEGIN
	INSERT INTO [TestData].[dbo].[QualifiedNameTable]
	(
		[ID],
		[Value]
	)
	VALUES
	(
		@ID,
		@Value
	)
END

