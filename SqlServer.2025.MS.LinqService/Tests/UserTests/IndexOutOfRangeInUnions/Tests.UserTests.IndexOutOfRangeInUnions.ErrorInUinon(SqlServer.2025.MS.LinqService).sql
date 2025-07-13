BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[doSap].[DocEntry],
	IIF([doSap].[DocStatus] = N'O', N'Aberto', N'Fechado'),
	CAST(N'Manual/Externo' AS NVarChar(4000))
FROM
	[O1] [doSap]
UNION
SELECT
	[doSap_1].[DocEntry],
	IIF([doSap_1].[DocStatus] = N'O', N'Aberto', N'Fechado'),
	CAST(N'Manual/Externo' AS NVarChar(4000))
FROM
	[O2] [doSap_1]
UNION
SELECT
	[doSap_2].[DocEntry],
	IIF([doSap_2].[DocStatus] = N'O', N'Aberto', N'Fechado'),
	CAST(N'Manual/Externo' AS NVarChar(4000))
FROM
	[O3] [doSap_2]

