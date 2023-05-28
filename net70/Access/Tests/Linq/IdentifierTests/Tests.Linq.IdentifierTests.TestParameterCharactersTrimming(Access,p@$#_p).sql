BeforeExecute
-- Access AccessOleDb

DROP TABLE [testparams]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [testparams]
(
	[p@$#_p] Int NOT NULL
)

BeforeExecute
-- Access AccessOleDb
DECLARE @p$_p Integer -- Int32
SET     @p$_p = 2

UPDATE
	[testparams] [t]
SET
	[t].[p@$#_p] = @p$_p
WHERE
	[t].[p@$#_p] = 1

BeforeExecute
-- Access AccessOleDb

DROP TABLE [testparams]

