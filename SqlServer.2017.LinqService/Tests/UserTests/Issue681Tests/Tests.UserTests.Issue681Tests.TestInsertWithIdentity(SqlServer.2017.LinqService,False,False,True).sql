BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [Issue681Table4]

BeforeExecute
-- SqlServer.2017

IF (OBJECT_ID(N'[Issue681Table4]', N'U') IS NULL)
	CREATE TABLE [Issue681Table4]
	(
		[ID]    Int  NOT NULL IDENTITY,
		[Value] Int  NOT NULL,

		CONSTRAINT [PK_Issue681Table4] PRIMARY KEY CLUSTERED ([ID])
	)

BeforeExecute
-- SqlServer.2017

SELECT TOP (1)
	SCHEMA_NAME()
FROM
	[LinqDataTypes] [t1]

BeforeExecute
-- SqlServer.2017
DECLARE @Value Int -- Int32
SET     @Value = 10

INSERT INTO [dbo].[Issue681Table4]
(
	[Value]
)
VALUES
(
	@Value
)

SELECT SCOPE_IDENTITY()

BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [Issue681Table4]

