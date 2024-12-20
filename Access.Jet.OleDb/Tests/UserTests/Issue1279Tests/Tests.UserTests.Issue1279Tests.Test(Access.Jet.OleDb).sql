BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [Issue1279Table]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

CREATE TABLE [Issue1279Table]
(
	[Id]      Int       NOT NULL IDENTITY,
	[CharFld] NChar(1)  NOT NULL,

	CONSTRAINT [PK_Issue1279Table] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @CharFld WChar(1) -- StringFixedLength
SET     @CharFld = 'P'

INSERT INTO [Issue1279Table]
(
	[CharFld]
)
VALUES
(
	@CharFld
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT TOP 1
	[t1].[Id],
	[t1].[CharFld]
FROM
	[Issue1279Table] [t1]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [Issue1279Table]

