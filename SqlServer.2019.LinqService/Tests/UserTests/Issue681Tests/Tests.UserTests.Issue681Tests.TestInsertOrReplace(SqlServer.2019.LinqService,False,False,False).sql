BeforeExecute
-- SqlServer.2019 (asynchronously)
DECLARE @ID Int -- Int32
SET     @ID = 5
DECLARE @Value Int -- Int32
SET     @Value = 10

MERGE INTO [Issue681Table] [t1]
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

BeforeExecute
-- SqlServer.2019 (asynchronously)
DECLARE @ID Int -- Int32
SET     @ID = 5
DECLARE @Value Int -- Int32
SET     @Value = 10

MERGE INTO [Issue681Table] [t1]
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

