BeforeExecute
-- Access AccessOleDb

CREATE TABLE [Issue1279Table]
(
	[Id]      Int       NOT NULL IDENTITY,
	[CharFld] NChar(1)  NOT NULL,

	CONSTRAINT [PK_Issue1279Table] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Access AccessOleDb
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
-- Access AccessOleDb

DROP TABLE [Issue1279Table]

