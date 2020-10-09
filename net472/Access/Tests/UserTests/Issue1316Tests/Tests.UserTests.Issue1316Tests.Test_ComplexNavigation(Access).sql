BeforeExecute
-- Access AccessOleDb

CREATE TABLE [Issue1316Tests]
(
	[ID] Int NOT NULL,

	CONSTRAINT [PK_Issue1316Tests] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- Access AccessOleDb
DECLARE @ID Integer -- Int32
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
-- Access AccessOleDb
DECLARE @ID_1 Integer -- Int32
SET     @ID_1 = 5

SELECT TOP 2 
	[_].[ID]
FROM
	[Issue1316Tests] [_]
WHERE
	[_].[ID] = @ID_1

BeforeExecute
-- Access AccessOleDb
DECLARE @Id_1 Integer -- Int32
SET     @Id_1 = 5

SELECT TOP 2 
	[_].[ID]
FROM
	[Issue1316Tests] [_]
WHERE
	[_].[ID] = @Id_1

BeforeExecute
-- Access AccessOleDb

DROP TABLE [Issue1316Tests]

