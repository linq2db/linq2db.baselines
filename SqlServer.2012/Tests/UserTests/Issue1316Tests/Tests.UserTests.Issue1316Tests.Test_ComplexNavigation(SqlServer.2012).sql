﻿BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[Issue1316Tests]', N'U') IS NOT NULL)
	DROP TABLE [Issue1316Tests]

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[Issue1316Tests]', N'U') IS NULL)
	CREATE TABLE [Issue1316Tests]
	(
		[ID] Int NOT NULL,

		CONSTRAINT [PK_Issue1316Tests] PRIMARY KEY CLUSTERED ([ID])
	)

BeforeExecute
-- SqlServer.2012
DECLARE @ID Int -- Int32
SET     @ID = 5

INSERT INTO [Issue1316Tests]
(
	[ID]
)
VALUES
(
	@ID
)

BeforeExecute
-- SqlServer.2012
DECLARE @p Int -- Int32
SET     @p = 5

SELECT TOP (2)
	[t1].[ID]
FROM
	[Issue1316Tests] [t1]
WHERE
	[t1].[ID] = @p

BeforeExecute
-- SqlServer.2012
DECLARE @Id Int -- Int32
SET     @Id = 5

SELECT TOP (2)
	[t1].[ID]
FROM
	[Issue1316Tests] [t1]
WHERE
	[t1].[ID] = @Id

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[Issue1316Tests]', N'U') IS NOT NULL)
	DROP TABLE [Issue1316Tests]

