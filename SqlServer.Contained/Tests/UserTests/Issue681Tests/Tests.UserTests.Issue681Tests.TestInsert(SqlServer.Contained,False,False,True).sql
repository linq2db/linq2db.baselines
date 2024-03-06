﻿BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [Issue681Table]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

IF (OBJECT_ID(N'[Issue681Table]', N'U') IS NULL)
	CREATE TABLE [Issue681Table]
	(
		[ID]    Int NOT NULL,
		[Value] Int NOT NULL,

		CONSTRAINT [PK_Issue681Table] PRIMARY KEY CLUSTERED ([ID])
	)

BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT TOP (1)
	SCHEMA_NAME()
FROM
	[LinqDataTypes] [_]

BeforeExecute
-- SqlServer.Contained SqlServer.2019
DECLARE @ID Int -- Int32
SET     @ID = 5
DECLARE @Value Int -- Int32
SET     @Value = 10

INSERT INTO [dbo].[Issue681Table]
(
	[ID],
	[Value]
)
VALUES
(
	@ID,
	@Value
)

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [Issue681Table]

