-- Access.Ace.Odbc AccessODBC

SELECT
	[doSap].[DocEntry],
	IIF([doSap].[DocStatus] = 'O', 'Aberto', 'Fechado'),
	CStr('Manual/Externo')
FROM
	[O1] [doSap]
UNION
SELECT
	[doSap_1].[DocEntry],
	IIF([doSap_1].[DocStatus] = 'O', 'Aberto', 'Fechado'),
	CStr('Manual/Externo')
FROM
	[O2] [doSap_1]
UNION
SELECT
	[doSap_2].[DocEntry],
	IIF([doSap_2].[DocStatus] = 'O', 'Aberto', 'Fechado'),
	CStr('Manual/Externo')
FROM
	[O3] [doSap_2]

