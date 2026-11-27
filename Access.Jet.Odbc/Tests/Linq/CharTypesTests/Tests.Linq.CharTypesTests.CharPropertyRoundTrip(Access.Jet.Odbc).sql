-- Access.Jet.Odbc AccessODBC
DECLARE @CharFld NChar(1) -- StringFixedLength
SET     @CharFld = 'P'

INSERT INTO [CharFieldRecord]
(
	[CharFld]
)
VALUES
(
	?
)

-- Access.Jet.Odbc AccessODBC
SELECT TOP 1
	[t1].[Id],
	[t1].[CharFld]
FROM
	[CharFieldRecord] [t1]

