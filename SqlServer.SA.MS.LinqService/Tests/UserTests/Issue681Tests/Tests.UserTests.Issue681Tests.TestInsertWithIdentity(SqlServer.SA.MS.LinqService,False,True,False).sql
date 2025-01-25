BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [Issue681Table4]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

IF (OBJECT_ID(N'[Issue681Table4]', N'U') IS NULL)
	CREATE TABLE [Issue681Table4]
	(
		[ID]    Int  NOT NULL IDENTITY,
		[Value] Int  NOT NULL,

		CONSTRAINT [PK_Issue681Table4] PRIMARY KEY CLUSTERED ([ID])
	)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT TOP (1)
	DB_NAME()
FROM
	[LinqDataTypes] [t1]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @Value Int -- Int32
SET     @Value = 10

INSERT INTO [TestDataMSSA]..[Issue681Table4]
(
	[Value]
)
VALUES
(
	@Value
)

SELECT SCOPE_IDENTITY()

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [Issue681Table4]

