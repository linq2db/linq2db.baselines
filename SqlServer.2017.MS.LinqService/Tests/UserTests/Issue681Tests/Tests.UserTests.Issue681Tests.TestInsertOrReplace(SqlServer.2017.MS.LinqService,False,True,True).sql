﻿BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [Issue681Table]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

IF (OBJECT_ID(N'[Issue681Table]', N'U') IS NULL)
	CREATE TABLE [Issue681Table]
	(
		[ID]    Int NOT NULL,
		[Value] Int NOT NULL,

		CONSTRAINT [PK_Issue681Table] PRIMARY KEY CLUSTERED ([ID])
	)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT TOP (1)
	DB_NAME()
FROM
	[LinqDataTypes] [t1]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT TOP (1)
	SCHEMA_NAME()
FROM
	[LinqDataTypes] [t1]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017
DECLARE @ID Int -- Int32
SET     @ID = 5
DECLARE @Value Int -- Int32
SET     @Value = 10

MERGE INTO [TestDataMS].[dbo].[Issue681Table] [t1]
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
-- SqlServer.2017.MS SqlServer.2017
DECLARE @ID Int -- Int32
SET     @ID = 5
DECLARE @Value Int -- Int32
SET     @Value = 10

MERGE INTO [TestDataMS].[dbo].[Issue681Table] [t1]
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
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [Issue681Table]

