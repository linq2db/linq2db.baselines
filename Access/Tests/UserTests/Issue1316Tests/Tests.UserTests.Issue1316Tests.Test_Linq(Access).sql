BeforeExecute
-- Access AccessOleDb

DROP TABLE [Issue1316Tests]

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

SELECT TOP 2
	[t1].[ID]
FROM
	[Issue1316Tests] [t1]
WHERE
	[t1].[ID] IN (4, 5, 6)

BeforeExecute
-- Access AccessOleDb

DROP TABLE [Issue1316Tests]

