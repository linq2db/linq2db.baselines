-- SqlServer.2022

SELECT TOP (1)
	DB_NAME()
FROM
	[LinqDataTypes] [t1]

-- SqlServer.2022
DECLARE @ID Int -- Int32
SET     @ID = 5
DECLARE @Value Int -- Int32
SET     @Value = 10

MERGE INTO [TestData]..[Issue681Table] [t1]
USING (SELECT @ID AS [ID]) [s] ON
(
	[t1].[ID] = [s].[ID]
)
WHEN MATCHED THEN
	UPDATE 
	SET
		[Value] = @Value
WHEN NOT MATCHED THEN
	INSERT
	(
		[ID],
		[Value]
	)
	VALUES
	(
		@ID,
		@Value
	);

-- SqlServer.2022
DECLARE @ID Int -- Int32
SET     @ID = 5
DECLARE @Value Int -- Int32
SET     @Value = 10

MERGE INTO [TestData]..[Issue681Table] [t1]
USING (SELECT @ID AS [ID]) [s] ON
(
	[t1].[ID] = [s].[ID]
)
WHEN MATCHED THEN
	UPDATE 
	SET
		[Value] = @Value
WHEN NOT MATCHED THEN
	INSERT
	(
		[ID],
		[Value]
	)
	VALUES
	(
		@ID,
		@Value
	);

