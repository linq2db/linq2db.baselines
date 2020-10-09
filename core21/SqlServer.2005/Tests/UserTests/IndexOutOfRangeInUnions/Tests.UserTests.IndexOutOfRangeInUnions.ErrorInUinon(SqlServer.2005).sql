BeforeExecute
-- SqlServer.2005

CREATE TABLE [O1]
(
	[DocEntry]    Int            NOT NULL,
	[BplId]       Int            NOT NULL,
	[ChaveAcesso] NVarChar(4000)     NULL,
	[DocStatus]   NVarChar(4000)     NULL
)

BeforeExecute
-- SqlServer.2005

CREATE TABLE [O2]
(
	[DocEntry]    Int            NOT NULL,
	[BplId]       Int            NOT NULL,
	[ChaveAcesso] NVarChar(4000)     NULL,
	[DocStatus]   NVarChar(4000)     NULL
)

BeforeExecute
-- SqlServer.2005

CREATE TABLE [O3]
(
	[DocEntry]    Int            NOT NULL,
	[BplId]       Int            NOT NULL,
	[ChaveAcesso] NVarChar(4000)     NULL,
	[DocStatus]   NVarChar(4000)     NULL
)

BeforeExecute
-- SqlServer.2005

SELECT 
	[t1].[NumeroInterno], 
	[t1].[StatusValor], 
	[t1].[DescricaoStatus]
FROM
	( 
		SELECT 
			[doSap].[DocEntry] as [NumeroInterno], 
			CASE
				WHEN [doSap].[DocStatus] = N'O'
					THEN N'Aberto'
				ELSE N'Fechado'
			END as [StatusValor], 
			N'Manual/Externo' as [DescricaoStatus]
		FROM
			[O1] [doSap]
		UNION
		SELECT 
			[doSap_1].[DocEntry] as [NumeroInterno], 
			CASE
				WHEN [doSap_1].[DocStatus] = N'O'
					THEN N'Aberto'
				ELSE N'Fechado'
			END as [StatusValor], 
			N'Manual/Externo' as [DescricaoStatus]
		FROM
			[O2] [doSap_1]
	) [t1]
UNION
SELECT 
	[doSap_2].[DocEntry], 
	CASE
		WHEN [doSap_2].[DocStatus] = N'O'
			THEN N'Aberto'
		ELSE N'Fechado'
	END, 
	N'Manual/Externo'
FROM
	[O3] [doSap_2]

BeforeExecute
-- SqlServer.2005

DROP TABLE [O3]

BeforeExecute
-- SqlServer.2005

DROP TABLE [O2]

BeforeExecute
-- SqlServer.2005

DROP TABLE [O1]

