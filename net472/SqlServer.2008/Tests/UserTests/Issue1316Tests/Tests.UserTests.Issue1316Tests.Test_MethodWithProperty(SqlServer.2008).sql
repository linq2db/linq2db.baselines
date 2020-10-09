BeforeExecute
-- SqlServer.2008

CREATE TABLE [Issue1316Tests]
(
	[ID] Int NOT NULL,

	CONSTRAINT [PK_Issue1316Tests] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- SqlServer.2008
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
-- SqlServer.2008
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
-- SqlServer.2008

DROP TABLE [Issue1316Tests]

