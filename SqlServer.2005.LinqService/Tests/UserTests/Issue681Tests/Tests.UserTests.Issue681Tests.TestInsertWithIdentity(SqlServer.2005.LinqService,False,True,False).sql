BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Issue681Table4]', N'U') IS NOT NULL)
	DROP TABLE [Issue681Table4]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Issue681Table4]', N'U') IS NULL)
	CREATE TABLE [Issue681Table4]
	(
		[ID]    Int  NOT NULL IDENTITY,
		[Value] Int  NOT NULL,

		CONSTRAINT [PK_Issue681Table4] PRIMARY KEY CLUSTERED ([ID])
	)

BeforeExecute
-- SqlServer.2005

SELECT TOP (1)
	DB_NAME()
FROM
	[LinqDataTypes] [t1]

BeforeExecute
-- SqlServer.2005
DECLARE @Value Int -- Int32
SET     @Value = 10

INSERT INTO [TestData]..[Issue681Table4]
(
	[Value]
)
VALUES
(
	@Value
)

SELECT SCOPE_IDENTITY()

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Issue681Table4]', N'U') IS NOT NULL)
	DROP TABLE [Issue681Table4]

