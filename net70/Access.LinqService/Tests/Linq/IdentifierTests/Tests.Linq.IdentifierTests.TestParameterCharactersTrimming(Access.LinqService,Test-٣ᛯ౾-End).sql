BeforeExecute
-- Access AccessOleDb

DROP TABLE [testparams]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [testparams]
(
	[Test-٣ᛯ౾-End] Int NOT NULL
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Test٣End Integer -- Int32
SET     @Test٣End = 2

UPDATE
	[testparams] [t]
SET
	[t].[Test-٣ᛯ౾-End] = @Test٣End
WHERE
	[t].[Test-٣ᛯ౾-End] = 1

BeforeExecute
-- Access AccessOleDb

DROP TABLE [testparams]

