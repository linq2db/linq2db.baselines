﻿BeforeExecute
-- SqlServer.2019

SELECT
	[doSap].[DocEntry],
	IIF([doSap].[DocStatus] = N'O', N'Aberto', N'Fechado'),
	CAST(N'Manual/Externo' AS NVarChar(Max))
FROM
	[O1] [doSap]
UNION
SELECT
	[doSap_1].[DocEntry],
	IIF([doSap_1].[DocStatus] = N'O', N'Aberto', N'Fechado'),
	CAST(N'Manual/Externo' AS NVarChar(Max))
FROM
	[O2] [doSap_1]
UNION
SELECT
	[doSap_2].[DocEntry],
	IIF([doSap_2].[DocStatus] = N'O', N'Aberto', N'Fechado'),
	CAST(N'Manual/Externo' AS NVarChar(Max))
FROM
	[O3] [doSap_2]

