-- Access.Ace.OleDb AccessOleDb
DECLARE @CharFld WChar(1) -- StringFixedLength
SET     @CharFld = 'P'

INSERT INTO [CharFieldRecord]
(
	[CharFld]
)
VALUES
(
	@CharFld
)

-- Access.Ace.OleDb AccessOleDb
SELECT TOP 1
	[t1].[Id],
	[t1].[CharFld]
FROM
	[CharFieldRecord] [t1]

