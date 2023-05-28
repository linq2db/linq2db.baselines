BeforeExecute
-- Access AccessOleDb

DROP TABLE [testparams]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [testparams]
(
	[Test-Имя] Int NOT NULL
)

BeforeExecute
-- Access AccessOleDb
DECLARE @TestИмя Integer -- Int32
SET     @TestИмя = 2

UPDATE
	[testparams] [t]
SET
	[t].[Test-Имя] = @TestИмя
WHERE
	[t].[Test-Имя] = 1

BeforeExecute
-- Access AccessOleDb

DROP TABLE [testparams]

