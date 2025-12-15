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

-- Access.Jet.OleDb AccessOleDb

SELECT TOP 1
	[t1].[Id],
	[t1].[CharFld]
FROM
	[Issue1279Table] [t1]

