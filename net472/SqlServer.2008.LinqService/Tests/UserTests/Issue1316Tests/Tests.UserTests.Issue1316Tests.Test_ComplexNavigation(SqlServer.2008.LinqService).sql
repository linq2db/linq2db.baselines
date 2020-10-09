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
DECLARE @ID_1 Int -- Int32
SET     @ID_1 = 5

SELECT TOP (@take) 
	[_].[ID]
FROM
	[Issue1316Tests] [_]
WHERE
	[_].[ID] = @ID_1

BeforeExecute
-- SqlServer.2008
DECLARE @take Int -- Int32
SET     @take = 2
DECLARE @Id_1 Int -- Int32
SET     @Id_1 = 5

SELECT TOP (@take) 
	[_].[ID]
FROM
	[Issue1316Tests] [_]
WHERE
	[_].[ID] = @Id_1

BeforeExecute
-- SqlServer.2008

DROP TABLE [Issue1316Tests]

