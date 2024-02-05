BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [Issue1316Tests]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

IF (OBJECT_ID(N'[Issue1316Tests]', N'U') IS NULL)
	CREATE TABLE [Issue1316Tests]
	(
		[ID] Int NOT NULL,

		CONSTRAINT [PK_Issue1316Tests] PRIMARY KEY CLUSTERED ([ID])
	)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
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
-- SqlServer.2022.MS SqlServer.2022
DECLARE @take Int -- Int32
SET     @take = 2
DECLARE @Item1 Int -- Int32
SET     @Item1 = 5

SELECT TOP (@take)
	[_].[ID]
FROM
	[Issue1316Tests] [_]
WHERE
	[_].[ID] = @Item1

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [Issue1316Tests]

