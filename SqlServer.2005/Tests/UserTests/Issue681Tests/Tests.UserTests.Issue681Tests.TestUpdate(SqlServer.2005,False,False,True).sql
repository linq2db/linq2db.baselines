BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Issue681Table]', N'U') IS NOT NULL)
	DROP TABLE [Issue681Table]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Issue681Table]', N'U') IS NULL)
	CREATE TABLE [Issue681Table]
	(
		[ID]    Int NOT NULL,
		[Value] Int NOT NULL,

		CONSTRAINT [PK_Issue681Table] PRIMARY KEY CLUSTERED ([ID])
	)

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
	[u]
SET
	[u].[Value] = @Value
FROM
	[dbo].[Issue681Table] [u]
WHERE
	[u].[ID] = @ID

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Issue681Table]', N'U') IS NOT NULL)
	DROP TABLE [Issue681Table]

