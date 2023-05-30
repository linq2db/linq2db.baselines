BeforeExecute
-- Access AccessOleDb

DROP TABLE [testparams]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [testparams]
(
	[p_p] Int NOT NULL
)

BeforeExecute
-- Access AccessOleDb
DECLARE @p_p Integer -- Int32
SET     @p_p = 2

UPDATE
	[testparams] [t]
SET
	[t].[p_p] = @p_p
WHERE
	[t].[p_p] = 1

BeforeExecute
-- Access AccessOleDb

DROP TABLE [testparams]

