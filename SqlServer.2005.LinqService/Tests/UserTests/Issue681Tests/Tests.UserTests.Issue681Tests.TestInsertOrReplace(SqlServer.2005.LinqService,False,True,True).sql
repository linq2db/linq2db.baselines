BeforeExecute
-- SqlServer.2005

SELECT TOP (1)
	DB_NAME()
FROM
	[LinqDataTypes] [t1]

BeforeExecute
-- SqlServer.2005

SELECT TOP (1)
	SCHEMA_NAME()
FROM
	[LinqDataTypes] [t1]

BeforeExecute
-- SqlServer.2005
DECLARE @Value Int -- Int32
SET     @Value = 10
DECLARE @ID Int -- Int32
SET     @ID = 5

UPDATE
	[TestData].[dbo].[Issue681Table]
SET
	[Value] = @Value
FROM
	[TestData].[dbo].[Issue681Table] [t1]
WHERE
	[t1].[ID] = @ID

IF @@ROWCOUNT = 0
BEGIN
	INSERT INTO [TestData].[dbo].[Issue681Table]
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

BeforeExecute
-- SqlServer.2005
DECLARE @Value Int -- Int32
SET     @Value = 10
DECLARE @ID Int -- Int32
SET     @ID = 5

UPDATE
	[TestData].[dbo].[Issue681Table]
SET
	[Value] = @Value
FROM
	[TestData].[dbo].[Issue681Table] [t1]
WHERE
	[t1].[ID] = @ID

IF @@ROWCOUNT = 0
BEGIN
	INSERT INTO [TestData].[dbo].[Issue681Table]
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

