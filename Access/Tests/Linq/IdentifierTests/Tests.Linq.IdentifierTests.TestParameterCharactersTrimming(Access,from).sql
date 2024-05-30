BeforeExecute
-- Access AccessOleDb

DROP TABLE [testparams]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [testparams]
(
	[from] Int NOT NULL
)

BeforeExecute
-- Access AccessOleDb
DECLARE @from Integer -- Int32
SET     @from = 2

UPDATE
	[testparams] [t]
SET
	[t].[from] = @from
WHERE
	[t].[from] = 1

BeforeExecute
-- Access AccessOleDb

DROP TABLE [testparams]

