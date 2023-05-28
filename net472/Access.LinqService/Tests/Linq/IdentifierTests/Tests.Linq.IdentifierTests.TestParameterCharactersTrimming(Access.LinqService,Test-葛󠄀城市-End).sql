BeforeExecute
-- Access AccessOleDb

DROP TABLE [testparams]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [testparams]
(
	[Test-葛󠄀城市-End] Int NOT NULL
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Test葛城市End Integer -- Int32
SET     @Test葛城市End = 2

UPDATE
	[testparams] [t]
SET
	[t].[Test-葛󠄀城市-End] = @Test葛城市End
WHERE
	[t].[Test-葛󠄀城市-End] = 1

BeforeExecute
-- Access AccessOleDb

DROP TABLE [testparams]

