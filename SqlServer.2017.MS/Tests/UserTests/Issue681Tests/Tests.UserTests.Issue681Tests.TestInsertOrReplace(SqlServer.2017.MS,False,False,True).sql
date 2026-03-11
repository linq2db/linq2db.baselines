-- SqlServer.2017.MS SqlServer.2017

SELECT TOP (1)
	SCHEMA_NAME()
FROM
	[LinqDataTypes] [t1]

-- SqlServer.2017.MS SqlServer.2017
DECLARE @ID Int -- Int32
SET     @ID = 5
DECLARE @Value Int -- Int32
SET     @Value = 10

MERGE INTO [dbo].[Issue681Table] [t1]
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

-- SqlServer.2017.MS SqlServer.2017
DECLARE @ID Int -- Int32
SET     @ID = 5
DECLARE @Value Int -- Int32
SET     @Value = 10

MERGE INTO [dbo].[Issue681Table] [t1]
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

