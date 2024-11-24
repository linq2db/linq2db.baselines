BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [testparams]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

CREATE TABLE [testparams]
(
	[col1]    Int NOT NULL,
	[Column1] Int NOT NULL
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @A123456789b123456789c123456789d123456789e123456789 Integer -- Int32
SET     @A123456789b123456789c123456789d123456789e123456789 = 2

UPDATE
	[testparams] [t]
SET
	[t].[col1] = @A123456789b123456789c123456789d123456789e123456789
WHERE
	[t].[Column1] = 1

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [testparams]

