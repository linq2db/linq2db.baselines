BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [Issue1316Tests]

BeforeExecute
-- SqlServer.2016

IF (OBJECT_ID(N'[Issue1316Tests]', N'U') IS NULL)
	CREATE TABLE [Issue1316Tests]
	(
		[ID] Int NOT NULL,

		CONSTRAINT [PK_Issue1316Tests] PRIMARY KEY CLUSTERED ([ID])
	)

BeforeExecute
-- SqlServer.2016
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
-- SqlServer.2016

SELECT TOP (2)
	[t1].[ID]
FROM
	[Issue1316Tests] [t1]
WHERE
	[t1].[ID] IN (4, 5, 6)

BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [Issue1316Tests]

