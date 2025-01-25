BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[doSap].[DocEntry],
	CASE
		WHEN [doSap].[DocStatus] = N'O' THEN N'Aberto'
		ELSE N'Fechado'
	END,
	CAST(N'Manual/Externo' AS NVarChar(4000))
FROM
	[O1] [doSap]
UNION
SELECT
	[doSap_1].[DocEntry],
	CASE
		WHEN [doSap_1].[DocStatus] = N'O' THEN N'Aberto'
		ELSE N'Fechado'
	END,
	CAST(N'Manual/Externo' AS NVarChar(4000))
FROM
	[O2] [doSap_1]
UNION
SELECT
	[doSap_2].[DocEntry],
	CASE
		WHEN [doSap_2].[DocStatus] = N'O' THEN N'Aberto'
		ELSE N'Fechado'
	END,
	CAST(N'Manual/Externo' AS NVarChar(4000))
FROM
	[O3] [doSap_2]

