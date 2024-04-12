﻿BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Issue1316Tests]', N'U') IS NOT NULL)
	DROP TABLE [Issue1316Tests]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Issue1316Tests]', N'U') IS NULL)
	CREATE TABLE [Issue1316Tests]
	(
		[ID] Int NOT NULL,

		CONSTRAINT [PK_Issue1316Tests] PRIMARY KEY CLUSTERED ([ID])
	)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005
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
-- SqlServer.2005.MS SqlServer.2005

SELECT TOP (2)
	[_].[ID]
FROM
	[Issue1316Tests] [_]
WHERE
	[_].[ID] IN (4, 5, 6)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Issue1316Tests]', N'U') IS NOT NULL)
	DROP TABLE [Issue1316Tests]

