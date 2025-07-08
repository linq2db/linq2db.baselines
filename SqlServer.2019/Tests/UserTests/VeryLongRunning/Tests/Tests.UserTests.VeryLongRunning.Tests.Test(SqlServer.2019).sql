BeforeExecute
-- SqlServer.2019

CREATE TABLE [tempdb]..[#tbl0101]
(
	[Column1] Int           NOT NULL IDENTITY,
	[Column2] Int           NOT NULL,
	[Column3] Int           NOT NULL,
	[Column4] VarChar(255)  NOT NULL,
	[Column5] Date              NULL,
	[Column6] Date              NULL,
	[Column7] Int           NOT NULL,
	[Column8] Bit           NOT NULL,

	PRIMARY KEY CLUSTERED ([Column1])
)

BeforeExecute
-- SqlServer.2019

CREATE TABLE [tempdb]..[#tbl0202]
(
	[Column1] Int           NOT NULL,
	[Column2] TinyInt       NOT NULL,
	[Column3] NVarChar(100) NOT NULL,
	[Column4] Date          NOT NULL,
	[Column5] Date              NULL,

	PRIMARY KEY CLUSTERED ([Column1], [Column2], [Column3], [Column4])
)

BeforeExecute
-- SqlServer.2019

CREATE TABLE [tempdb]..[#tbl3333]
(
	[Column1] Int          NOT NULL,
	[Column2] NVarChar(50) NOT NULL,
	[Column3] Char(1)      NOT NULL,

	PRIMARY KEY CLUSTERED ([Column1])
)

BeforeExecute
-- SqlServer.2019

CREATE TABLE [tempdb]..[#tbl4444]
(
	[Column1] Date NOT NULL,
	[Column2] Int  NOT NULL,

	PRIMARY KEY CLUSTERED ([Column1], [Column2])
)

BeforeExecute
-- SqlServer.2019

CREATE TABLE [tempdb]..[#tbl5555]
(
	[Column1] BigInt        NOT NULL,
	[Column2] NVarChar(200) NOT NULL,
	[Column4] Date          NOT NULL,
	[Column5] Date              NULL,

	PRIMARY KEY CLUSTERED ([Column1], [Column2], [Column4])
)

BeforeExecute
-- SqlServer.2019

CREATE TABLE [tempdb]..[#tbl6666]
(
	[Column1] Int    NOT NULL,
	[Column4] Date   NOT NULL,
	[Column5] Date       NULL,
	[Column6] BigInt NOT NULL,
	[Column7] Bit    NOT NULL,

	PRIMARY KEY CLUSTERED ([Column1], [Column4], [Column6])
)

BeforeExecute
-- SqlServer.2019

CREATE TABLE [tempdb]..[#tbl7777]
(
	[Column1] Date           NOT NULL,
	[Column2] Int            NOT NULL,
	[Column3] Int            NOT NULL,
	[Column4] Int            NOT NULL,
	[Column5] Decimal(28, 6)     NULL,
	[Column6] Decimal(28, 6)     NULL,
	[Column7] VarChar(20)        NULL,

	PRIMARY KEY CLUSTERED ([Column1], [Column2])
)

BeforeExecute
-- SqlServer.2019

CREATE TABLE [tempdb]..[#tbl9999]
(
	[Column1]  Int             NOT NULL,
	[Column4]  Date            NOT NULL,
	[Column5]  Date                NULL,
	[Column2]  Int                 NULL,
	[Column3]  NVarChar(20)        NULL,
	[Column6]  Decimal(38, 12)     NULL,
	[Column7]  Decimal(38, 12)     NULL,
	[Column8]  Char(1)             NULL,
	[Column9]  Char(1)             NULL,
	[Column10] Decimal(38, 12)     NULL,

	PRIMARY KEY CLUSTERED ([Column1], [Column4])
)

BeforeExecute
-- SqlServer.2019

CREATE TABLE [tempdb]..[#tbl1010]
(
	[Column1] Date           NOT NULL,
	[Column2] VarChar(20)        NULL,
	[Column3] VarChar(20)        NULL,
	[Column4] VarChar(20)        NULL,
	[Column5] VarChar(20)        NULL,
	[Column6] Date               NULL,
	[Column7] Decimal(24, 6)     NULL,
	[Column8] VarChar(20)        NULL
)

BeforeExecute
-- SqlServer.2019

CREATE TABLE [tempdb]..[#tbl1212]
(
	[Column1] Int           NOT NULL,
	[Column2] BigInt        NOT NULL,
	[Column3] TinyInt       NOT NULL,
	[Column6] NVarChar(100) NOT NULL,
	[Column4] Date          NOT NULL,
	[Column5] Date              NULL,

	PRIMARY KEY CLUSTERED ([Column1], [Column2], [Column3], [Column6], [Column4])
)

BeforeExecute
-- SqlServer.2019

CREATE TABLE [tempdb]..[#tbl1313]
(
	[Column1] BigInt     NOT NULL,
	[Column4] Date       NOT NULL,
	[Column5] Date           NULL,
	[Column2] VarChar(3) NOT NULL,

	PRIMARY KEY CLUSTERED ([Column1], [Column4])
)

BeforeExecute
-- SqlServer.2019

CREATE TABLE [tempdb]..[#tbl1515]
(
	[Column1] Int         NOT NULL,
	[Column2] Int         NOT NULL,
	[Column3] Int             NULL,
	[Column6] VarChar(50) NOT NULL,
	[Column4] Date        NOT NULL,
	[Column5] Date            NULL,

	PRIMARY KEY CLUSTERED ([Column1])
)

BeforeExecute
-- SqlServer.2019

CREATE TABLE [tempdb]..[#tbl1414]
(
	[Column1] Int NOT NULL,

	PRIMARY KEY CLUSTERED ([Column1])
)

BeforeExecute
-- SqlServer.2019
DECLARE @date Date
SET     @date = DATETIME2FROMPARTS(2018, 11, 30, 0, 0, 0, 0, 7)
DECLARE @Value Date
SET     @Value = DATETIME2FROMPARTS(2018, 11, 30, 0, 0, 0, 0, 7)

SELECT
	[t].[Column1],
	CASE
		WHEN [r].[Column4] IS NOT NULL THEN [r].[Column4]
		WHEN [i].[Column8] IS NULL AND ([rd].[Column4] IS NOT NULL OR [rd2].[Column4] IS NOT NULL)
			THEN IIF([rd].[Column4] IS NOT NULL, [rd].[Column4], [rd2].[Column4])
		ELSE [i].[Column8]
	END
FROM
	[tempdb]..[#tbl9999] [i]
		LEFT JOIN (
			SELECT
				[g_1].[Column3] as [Key_1],
				MIN(IIF([g_1].[Column2] = 1, [g_1].[Column6], NULL)) as [Column4]
			FROM
				[tempdb]..[#tbl1515] [g_1]
			WHERE
				[g_1].[Column4] <= @date AND ([g_1].[Column5] IS NULL OR [g_1].[Column5] > @date) AND
				[g_1].[Column3] IS NOT NULL
			GROUP BY
				[g_1].[Column3]
		) [rd] ON [i].[Column2] = [rd].[Key_1] OR [i].[Column2] IS NULL AND [rd].[Key_1] IS NULL
		LEFT JOIN (
			SELECT
				MIN(IIF([g_2].[Column2] = 1, [g_2].[Column6], NULL)) as [Column4]
			FROM
				[tempdb]..[#tbl1515] [g_2]
			WHERE
				[g_2].[Column4] <= @date AND ([g_2].[Column5] IS NULL OR [g_2].[Column5] > @date) AND
				[g_2].[Column3] IS NULL
			GROUP BY
				[g_2].[Column3]
		) [rd2] ON 1=1
		LEFT JOIN (
			SELECT
				[g_3].[Column2] as [Key_1],
				MIN(IIF([g_3].[Column3] = 1, [g_3].[Column4], NULL)) as [Column4]
			FROM
				[tempdb]..[#tbl0101] [g_3]
			WHERE
				[g_3].[Column5] <= @Value AND
				([g_3].[Column6] IS NULL OR [g_3].[Column6] > @Value) AND
				[g_3].[Column7] = 555 AND
				[g_3].[Column8] = 1
			GROUP BY
				[g_3].[Column2]
		) [r] ON [i].[Column1] = [r].[Key_1]
		INNER JOIN [tempdb]..[#tbl1414] [t] ON [i].[Column1] = [t].[Column1]
WHERE
	[i].[Column4] <= @date AND ([i].[Column5] IS NULL OR [i].[Column5] > @date)

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#tbl1414]

BeforeExecute
-- SqlServer.2019

CREATE TABLE [tempdb]..[#tmp001]
(
	[Column6] BigInt NOT NULL
)

BeforeExecute
-- SqlServer.2019
DECLARE @date Date
SET     @date = DATETIME2FROMPARTS(2018, 11, 23, 0, 0, 0, 0, 7)

INSERT INTO [tempdb]..[#tmp001]
(
	[Column6]
)
SELECT DISTINCT
	[ex].[Column6]
FROM
	(
		SELECT DISTINCT
			[pc].[Column4]
		FROM
			[tempdb]..[#tbl7777] [pc]
	) [t1]
		INNER JOIN [tempdb]..[#tbl6666] [ex] ON [t1].[Column4] = [ex].[Column1]
WHERE
	[ex].[Column4] <= @date AND ([ex].[Column5] IS NULL OR [ex].[Column5] > @date)

BeforeExecute
-- SqlServer.2019

CREATE TABLE [tempdb]..[#tmp002]
(
	[Column2] NVarChar(20)   NOT NULL,
	[Column6] DateTime2          NULL,
	[Column7] Decimal(24, 6)     NULL,
	[Column8] NVarChar(20)       NULL,
	[Prop3]   BigInt         NOT NULL
)

BeforeExecute
-- SqlServer.2019
DECLARE @date Date
SET     @date = DATETIME2FROMPARTS(2018, 11, 23, 0, 0, 0, 0, 7)
DECLARE @Value Date
SET     @Value = DATETIME2FROMPARTS(2018, 11, 23, 0, 0, 0, 0, 7)

INSERT INTO [tempdb]..[#tmp002]
(
	[Column2],
	[Column6],
	[Column7],
	[Column8],
	[Prop3]
)
SELECT
	[t].[Column2],
	[t].[Column6],
	[t].[Column7],
	[t].[Column8],
	IIF([e].[Column2] IS NOT NULL, [e].[Column1], [be].[Column1])
FROM
	[tempdb]..[#tbl1010] [t]
		LEFT JOIN [tempdb]..[#tbl1313] [e]
			INNER JOIN [tempdb]..[#tmp001] [tex1] ON [e].[Column1] = [tex1].[Column6]
		ON [t].[Column5] = [e].[Column2] AND [e].[Column4] <= @date AND ([e].[Column5] IS NULL OR [e].[Column5] > @date)
		LEFT JOIN [tempdb]..[#tbl5555] [be]
			INNER JOIN [tempdb]..[#tmp001] [tex2] ON [be].[Column1] = [tex2].[Column6]
		ON [t].[Column5] = [be].[Column2] AND [be].[Column4] <= @Value AND ([be].[Column5] IS NULL OR [be].[Column5] > @Value)
WHERE
	[t].[Column1] = @date AND
	[t].[Column2] IS NOT NULL AND
	([t].[Column7] <> 0 OR [t].[Column7] IS NULL) AND
	([e].[Column2] IS NOT NULL OR [be].[Column2] IS NOT NULL)

BeforeExecute
-- SqlServer.2019

CREATE TABLE [tempdb]..[#tmp003]
(
	[Column2] NVarChar(20)   NOT NULL,
	[Prop3]   BigInt         NOT NULL,
	[Column3] Decimal(24, 6)     NULL,
	[Column4] NVarChar(20)       NULL,

	PRIMARY KEY CLUSTERED ([Column2], [Prop3])
)

BeforeExecute
-- SqlServer.2019

INSERT INTO [tempdb]..[#tmp003]
(
	[Column2],
	[Prop3],
	[Column3],
	[Column4]
)
SELECT
	[mp].[Column2],
	[lp_1].[Prop3],
	[lp_1].[Column7],
	[lp_1].[Column8]
FROM
	(
		SELECT
			MAX([gr].[Column6]) as [Max_1],
			[gr].[Column2],
			[gr].[Prop3]
		FROM
			[tempdb]..[#tmp002] [gr]
		GROUP BY
			[gr].[Column2],
			[gr].[Prop3]
	) [mp]
		CROSS APPLY (
			SELECT TOP (1)
				[lp].[Prop3],
				[lp].[Column7],
				[lp].[Column8]
			FROM
				[tempdb]..[#tmp002] [lp]
			WHERE
				[lp].[Column2] = [mp].[Column2] AND [lp].[Prop3] = [mp].[Prop3] AND
				([lp].[Column6] = [mp].[Max_1] OR [lp].[Column6] IS NULL AND [mp].[Max_1] IS NULL)
		) [lp_1]
OPTION (RECOMPILE)

BeforeExecute
-- SqlServer.2019

CREATE TABLE [tempdb]..[#tmp004]
(
	[Column2] NVarChar(4000) NOT NULL
)

BeforeExecute
-- SqlServer.2019

INSERT INTO [tempdb]..[#tmp004]
(
	[Column2]
)
SELECT DISTINCT
	[t].[Column2]
FROM
	[tempdb]..[#tmp003] [t]

BeforeExecute
-- SqlServer.2019

CREATE TABLE [tempdb]..[#tbl8888]
(
	[Column1] DateTime2      NOT NULL,
	[Column2] Int            NOT NULL,
	[Column3] Decimal(24, 6)     NULL,
	[Column4] VarChar(20)        NULL
)

BeforeExecute
-- SqlServer.2019
DECLARE @date Date
SET     @date = DATETIME2FROMPARTS(2018, 11, 23, 0, 0, 0, 0, 7)

INSERT INTO [tempdb]..[#tbl8888]
(
	[Column1],
	[Column2],
	[Column3],
	[Column4]
)
SELECT
	[pc].[Column1],
	[pc].[Column2],
	[mp].[Column3],
	[mp].[Column4]
FROM
	[tempdb]..[#tbl7777] [pc]
		INNER JOIN [tempdb]..[#tbl4444] [p] ON [pc].[Column1] = [p].[Column1] AND [pc].[Column3] = [p].[Column2]
		INNER JOIN (
			SELECT
				[i].[Column1],
				[i].[Column3] as [PmeID]
			FROM
				[tempdb]..[#tbl9999] [i]
					INNER JOIN [tempdb]..[#tbl3333] [it] ON [i].[Column2] = [it].[Column1]
					INNER JOIN [tempdb]..[#tmp004] [pme] ON [i].[Column3] = [pme].[Column2]
			WHERE
				[i].[Column4] <= @date AND ([i].[Column5] IS NULL OR [i].[Column5] > @date) AND
				[it].[Column3] IN ('E', 'B')
		) [i_1] ON [pc].[Column4] = [i_1].[Column1]
		INNER JOIN [tempdb]..[#tbl6666] [ie] ON [i_1].[Column1] = [ie].[Column1] AND [ie].[Column7] = 1
		INNER JOIN [tempdb]..[#tmp003] [mp] ON [i_1].[PmeID] = [mp].[Column2] AND [ie].[Column6] = [mp].[Prop3]
WHERE
	[ie].[Column4] <= @date AND
	([ie].[Column5] IS NULL OR [ie].[Column5] > @date) AND
	[pc].[Column1] = @date AND
	[p].[Column1] = @date
OPTION (RECOMPILE)

BeforeExecute
-- SqlServer.2019
DECLARE @date Date
SET     @date = DATETIME2FROMPARTS(2018, 11, 23, 0, 0, 0, 0, 7)

UPDATE
	[pc]
SET
	[pc].[Column6] = TRY_CAST(([pc].[Column5] * [mp].[Column3]) AS DECIMAL(28, 6)),
	[pc].[Column7] = IIF(TRY_CAST(([pc].[Column5] * [mp].[Column3]) AS DECIMAL(28, 6)) IS NOT NULL, [mp].[Column4], NULL)
FROM
	[tempdb]..[#tbl7777] [pc]
		INNER JOIN [tempdb]..[#tbl8888] [mp] ON [pc].[Column1] = [mp].[Column1] AND [pc].[Column2] = [mp].[Column2]
WHERE
	[pc].[Column1] = @date

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#tbl8888]

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#tmp004]

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#tmp003]

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#tmp002]

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#tmp001]

BeforeExecute
-- SqlServer.2019

CREATE TABLE [tempdb]..[#tmp005]
(
	[Column4] Int NOT NULL
)

BeforeExecute
-- SqlServer.2019

INSERT INTO [tempdb]..[#tmp005]
(
	[Column4]
)
SELECT DISTINCT
	[pc].[Column4]
FROM
	[tempdb]..[#tbl7777] [pc]

BeforeExecute
-- SqlServer.2019

CREATE TABLE [tempdb]..[#tmp002]
(
	[Column2] NVarChar(20)   NOT NULL,
	[Column6] DateTime2          NULL,
	[Column7] Decimal(24, 6)     NULL,
	[Column8] NVarChar(20)       NULL,
	[Prop3]   BigInt         NOT NULL
)

BeforeExecute
-- SqlServer.2019
DECLARE @date Date
SET     @date = DATETIME2FROMPARTS(2018, 11, 23, 0, 0, 0, 0, 7)

INSERT INTO [tempdb]..[#tmp002]
(
	[Column2],
	[Column6],
	[Column7],
	[Column8],
	[Prop3]
)
SELECT
	[t].[Column2],
	[t].[Column6],
	[t].[Column7],
	[t].[Column8],
	[ie].[Column6]
FROM
	[tempdb]..[#tbl1010] [t]
		INNER JOIN [tempdb]..[#tbl1212] [iei] ON [t].[Column4] = Replace([iei].[Column6], N' ', N'-')
		INNER JOIN [tempdb]..[#tmp005] [ins] ON [iei].[Column1] = [ins].[Column4]
		INNER JOIN [tempdb]..[#tbl9999] [i] ON [iei].[Column1] = [i].[Column1]
		INNER JOIN [tempdb]..[#tbl6666] [ie] ON [iei].[Column1] = [ie].[Column1] AND [iei].[Column2] = [ie].[Column6]
WHERE
	[iei].[Column4] <= @date AND
	([iei].[Column5] IS NULL OR [iei].[Column5] > @date) AND
	[i].[Column4] <= @date AND
	([i].[Column5] IS NULL OR [i].[Column5] > @date) AND
	[ie].[Column4] <= @date AND
	([ie].[Column5] IS NULL OR [ie].[Column5] > @date) AND
	[t].[Column1] = @date AND
	[iei].[Column3] = 3 AND
	[ie].[Column7] = 1 AND
	[t].[Column2] IS NOT NULL AND
	[i].[Column2] = 1

BeforeExecute
-- SqlServer.2019

CREATE TABLE [tempdb]..[#tmp003]
(
	[Column2] NVarChar(20)   NOT NULL,
	[Prop3]   BigInt         NOT NULL,
	[Column3] Decimal(24, 6)     NULL,
	[Column4] NVarChar(20)       NULL,

	PRIMARY KEY CLUSTERED ([Column2], [Prop3])
)

BeforeExecute
-- SqlServer.2019

INSERT INTO [tempdb]..[#tmp003]
(
	[Column2],
	[Prop3],
	[Column3],
	[Column4]
)
SELECT
	[mp].[Column2],
	[lp_1].[Prop3],
	[lp_1].[Column7],
	[lp_1].[Column8]
FROM
	(
		SELECT
			MAX([gr].[Column6]) as [Max_1],
			[gr].[Column2],
			[gr].[Prop3]
		FROM
			[tempdb]..[#tmp002] [gr]
		GROUP BY
			[gr].[Column2],
			[gr].[Prop3]
	) [mp]
		CROSS APPLY (
			SELECT TOP (1)
				[lp].[Prop3],
				[lp].[Column7],
				[lp].[Column8]
			FROM
				[tempdb]..[#tmp002] [lp]
			WHERE
				[lp].[Column2] = [mp].[Column2] AND [lp].[Prop3] = [mp].[Prop3] AND
				([lp].[Column6] = [mp].[Max_1] OR [lp].[Column6] IS NULL AND [mp].[Max_1] IS NULL)
		) [lp_1]
OPTION (RECOMPILE)

BeforeExecute
-- SqlServer.2019

CREATE TABLE [tempdb]..[#tmp004]
(
	[Column2] NVarChar(4000) NOT NULL
)

BeforeExecute
-- SqlServer.2019

INSERT INTO [tempdb]..[#tmp004]
(
	[Column2]
)
SELECT DISTINCT
	[t].[Column2]
FROM
	[tempdb]..[#tmp003] [t]

BeforeExecute
-- SqlServer.2019

CREATE TABLE [tempdb]..[#tbl8888]
(
	[Column1] DateTime2      NOT NULL,
	[Column2] Int            NOT NULL,
	[Column3] Decimal(24, 6)     NULL,
	[Column4] VarChar(20)        NULL
)

BeforeExecute
-- SqlServer.2019
DECLARE @date Date
SET     @date = DATETIME2FROMPARTS(2018, 11, 23, 0, 0, 0, 0, 7)

INSERT INTO [tempdb]..[#tbl8888]
(
	[Column1],
	[Column2],
	[Column3],
	[Column4]
)
SELECT
	[pc].[Column1],
	[pc].[Column2],
	[mp].[Column3],
	[mp].[Column4]
FROM
	[tempdb]..[#tbl7777] [pc]
		INNER JOIN [tempdb]..[#tbl4444] [p] ON [pc].[Column1] = [p].[Column1] AND [pc].[Column3] = [p].[Column2]
		INNER JOIN (
			SELECT
				[i].[Column1],
				[i].[Column3] as [PmeID]
			FROM
				[tempdb]..[#tbl9999] [i]
					INNER JOIN [tempdb]..[#tbl3333] [it] ON [i].[Column2] = [it].[Column1]
					INNER JOIN [tempdb]..[#tmp004] [pme] ON [i].[Column3] = [pme].[Column2]
			WHERE
				[i].[Column4] <= @date AND ([i].[Column5] IS NULL OR [i].[Column5] > @date) AND
				[it].[Column3] IN ('E', 'B')
		) [i_1] ON [pc].[Column4] = [i_1].[Column1]
		INNER JOIN [tempdb]..[#tbl6666] [ie] ON [i_1].[Column1] = [ie].[Column1] AND [ie].[Column7] = 1
		INNER JOIN [tempdb]..[#tmp003] [mp] ON [i_1].[PmeID] = [mp].[Column2] AND [ie].[Column6] = [mp].[Prop3]
WHERE
	[ie].[Column4] <= @date AND
	([ie].[Column5] IS NULL OR [ie].[Column5] > @date) AND
	[pc].[Column1] = @date AND
	[p].[Column1] = @date
OPTION (RECOMPILE)

BeforeExecute
-- SqlServer.2019
DECLARE @date Date
SET     @date = DATETIME2FROMPARTS(2018, 11, 23, 0, 0, 0, 0, 7)

UPDATE
	[pc]
SET
	[pc].[Column6] = TRY_CAST(([pc].[Column5] * [mp].[Column3]) AS DECIMAL(28, 6)),
	[pc].[Column7] = IIF(TRY_CAST(([pc].[Column5] * [mp].[Column3]) AS DECIMAL(28, 6)) IS NOT NULL, [mp].[Column4], NULL)
FROM
	[tempdb]..[#tbl7777] [pc]
		INNER JOIN [tempdb]..[#tbl8888] [mp] ON [pc].[Column1] = [mp].[Column1] AND [pc].[Column2] = [mp].[Column2]
WHERE
	[pc].[Column1] = @date

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#tbl8888]

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#tmp004]

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#tmp003]

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#tmp002]

BeforeExecute
-- SqlServer.2019

CREATE TABLE [tempdb]..[#tmp006]
(
	[Column3] NVarChar(20)   NOT NULL,
	[Column6] DateTime2          NULL,
	[Column7] Decimal(24, 6)     NULL,
	[Column8] NVarChar(20)       NULL,
	[Prop3]   BigInt         NOT NULL
)

BeforeExecute
-- SqlServer.2019
DECLARE @date Date
SET     @date = DATETIME2FROMPARTS(2018, 11, 23, 0, 0, 0, 0, 7)

INSERT INTO [tempdb]..[#tmp006]
(
	[Column3],
	[Column6],
	[Column7],
	[Column8],
	[Prop3]
)
SELECT
	[t].[Column3],
	[t].[Column6],
	[t].[Column7],
	[t].[Column8],
	[ie].[Column6]
FROM
	[tempdb]..[#tbl1010] [t]
		INNER JOIN [tempdb]..[#tbl1212] [iei] ON [t].[Column4] = Replace([iei].[Column6], N' ', N'-') AND 2 = [iei].[Column3]
		INNER JOIN [tempdb]..[#tmp005] [ins] ON [iei].[Column1] = [ins].[Column4]
		INNER JOIN [tempdb]..[#tbl9999] [i] ON [iei].[Column1] = [i].[Column1]
		INNER JOIN [tempdb]..[#tbl6666] [ie] ON [iei].[Column1] = [ie].[Column1] AND [iei].[Column2] = [ie].[Column6] AND [ie].[Column7] = 1
WHERE
	[iei].[Column4] <= @date AND
	([iei].[Column5] IS NULL OR [iei].[Column5] > @date) AND
	[i].[Column4] <= @date AND
	([i].[Column5] IS NULL OR [i].[Column5] > @date) AND
	[ie].[Column4] <= @date AND
	([ie].[Column5] IS NULL OR [ie].[Column5] > @date) AND
	[i].[Column2] = 2 AND
	[t].[Column1] = @date AND
	[t].[Column3] IS NOT NULL AND
	([t].[Column7] <> 0 OR [t].[Column7] IS NULL) AND
	[i].[Column2] = 2

BeforeExecute
-- SqlServer.2019

CREATE TABLE [tempdb]..[#tmp007]
(
	[Column3] NVarChar(20)   NOT NULL,
	[Prop3]   BigInt         NOT NULL,
	[Column7] Decimal(24, 6)     NULL,
	[Column8] NVarChar(20)       NULL,

	PRIMARY KEY CLUSTERED ([Column3], [Prop3])
)

BeforeExecute
-- SqlServer.2019

INSERT INTO [tempdb]..[#tmp007]
(
	[Column3],
	[Prop3],
	[Column7],
	[Column8]
)
SELECT
	[mp].[Column3],
	[lp_1].[Prop3],
	[lp_1].[Column7],
	[lp_1].[Column8]
FROM
	(
		SELECT
			MAX([gr].[Column6]) as [Max_1],
			[gr].[Column3],
			[gr].[Prop3]
		FROM
			[tempdb]..[#tmp006] [gr]
		GROUP BY
			[gr].[Column3],
			[gr].[Prop3]
	) [mp]
		CROSS APPLY (
			SELECT TOP (1)
				[lp].[Prop3],
				[lp].[Column7],
				[lp].[Column8]
			FROM
				[tempdb]..[#tmp006] [lp]
			WHERE
				[lp].[Column3] = [mp].[Column3] AND [lp].[Prop3] = [mp].[Prop3] AND
				([lp].[Column6] = [mp].[Max_1] OR [lp].[Column6] IS NULL AND [mp].[Max_1] IS NULL)
		) [lp_1]
OPTION (RECOMPILE)

BeforeExecute
-- SqlServer.2019

CREATE TABLE [tempdb]..[#tmp008]
(
	[ISIN] NVarChar(4000) NOT NULL
)

BeforeExecute
-- SqlServer.2019

INSERT INTO [tempdb]..[#tmp008]
(
	[ISIN]
)
SELECT DISTINCT
	[t].[Column3]
FROM
	[tempdb]..[#tmp007] [t]

BeforeExecute
-- SqlServer.2019

CREATE TABLE [tempdb]..[#tbl8888]
(
	[Column1] DateTime2      NOT NULL,
	[Column2] Int            NOT NULL,
	[Column3] Decimal(24, 6)     NULL,
	[Column4] VarChar(20)        NULL
)

BeforeExecute
-- SqlServer.2019
DECLARE @date Date
SET     @date = DATETIME2FROMPARTS(2018, 11, 23, 0, 0, 0, 0, 7)

INSERT INTO [tempdb]..[#tbl8888]
(
	[Column1],
	[Column2],
	[Column3],
	[Column4]
)
SELECT
	[r].[Column1],
	[r].[Column2],
	[mp].[Column7],
	[mp].[Column8]
FROM
	[tempdb]..[#tbl7777] [r]
		INNER JOIN [tempdb]..[#tbl4444] [p] ON [r].[Column1] = [p].[Column1] AND [r].[Column3] = [p].[Column2]
		INNER JOIN (
			SELECT
				[i].[Column1],
				[ii].[Column3]
			FROM
				[tempdb]..[#tbl9999] [i]
					INNER JOIN [tempdb]..[#tbl3333] [it] ON [i].[Column2] = [it].[Column1]
					INNER JOIN [tempdb]..[#tbl0202] [ii] ON [i].[Column1] = [ii].[Column1] AND 1 = [ii].[Column2]
					INNER JOIN [tempdb]..[#tmp008] [pme] ON [ii].[Column3] = [pme].[ISIN]
			WHERE
				[i].[Column4] <= @date AND
				([i].[Column5] IS NULL OR [i].[Column5] > @date) AND
				[ii].[Column4] <= @date AND
				([ii].[Column5] IS NULL OR [ii].[Column5] > @date) AND
				[it].[Column3] IN ('E', 'B')
		) [i_1] ON [r].[Column4] = [i_1].[Column1]
		INNER JOIN [tempdb]..[#tbl6666] [ie] ON [i_1].[Column1] = [ie].[Column1] AND [ie].[Column7] = 1
		INNER JOIN [tempdb]..[#tmp007] [mp] ON [i_1].[Column3] = [mp].[Column3] AND [ie].[Column6] = [mp].[Prop3]
WHERE
	[ie].[Column4] <= @date AND
	([ie].[Column5] IS NULL OR [ie].[Column5] > @date) AND
	[r].[Column1] = @date AND
	[p].[Column1] = @date AND
	[r].[Column6] IS NULL
OPTION (RECOMPILE)

BeforeExecute
-- SqlServer.2019
DECLARE @date Date
SET     @date = DATETIME2FROMPARTS(2018, 11, 23, 0, 0, 0, 0, 7)

UPDATE
	[u]
SET
	[u].[Column6] = [r_1].[Column1],
	[u].[Column7] = IIF([r_1].[Column1] IS NOT NULL, [r_1].[Column4], NULL)
FROM
	[tempdb]..[#tbl7777] [u],
	(
		SELECT
			[r].[Column6],
			TRY_CAST(([r].[Column5] * [mp].[Column3]) AS DECIMAL(28, 6)) as [Column1],
			[mp].[Column4],
			[r].[Column1] as [Column1_1],
			[r].[Column2]
		FROM
			[tempdb]..[#tbl7777] [r]
				INNER JOIN [tempdb]..[#tbl8888] [mp] ON [r].[Column1] = [mp].[Column1] AND [r].[Column2] = [mp].[Column2]
		WHERE
			[r].[Column1] = @date
	) [r_1]
WHERE
	[r_1].[Column6] IS NULL AND [u].[Column1] = [r_1].[Column1_1] AND
	[u].[Column2] = [r_1].[Column2]

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#tbl8888]

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#tmp008]

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#tmp007]

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#tmp006]

BeforeExecute
-- SqlServer.2019

CREATE TABLE [tempdb]..[#tmp006]
(
	[Column3] NVarChar(20)   NOT NULL,
	[Column6] DateTime2          NULL,
	[Column7] Decimal(24, 6)     NULL,
	[Column8] NVarChar(20)       NULL,
	[Prop3]   BigInt         NOT NULL
)

BeforeExecute
-- SqlServer.2019
DECLARE @date Date
SET     @date = DATETIME2FROMPARTS(2018, 11, 23, 0, 0, 0, 0, 7)

INSERT INTO [tempdb]..[#tmp006]
(
	[Column3],
	[Column6],
	[Column7],
	[Column8],
	[Prop3]
)
SELECT
	[t].[Column3],
	[t].[Column6],
	[t].[Column7],
	[t].[Column8],
	[ie].[Column6]
FROM
	[tempdb]..[#tbl1010] [t]
		INNER JOIN [tempdb]..[#tbl1212] [iei] ON [t].[Column4] = Replace([iei].[Column6], N' ', N'-') AND 3 = [iei].[Column3]
		INNER JOIN [tempdb]..[#tmp005] [ins] ON [iei].[Column1] = [ins].[Column4]
		INNER JOIN [tempdb]..[#tbl9999] [i] ON [iei].[Column1] = [i].[Column1]
		INNER JOIN [tempdb]..[#tbl6666] [ie] ON [iei].[Column1] = [ie].[Column1] AND [iei].[Column2] = [ie].[Column6] AND [ie].[Column7] = 1
WHERE
	[iei].[Column4] <= @date AND
	([iei].[Column5] IS NULL OR [iei].[Column5] > @date) AND
	[i].[Column4] <= @date AND
	([i].[Column5] IS NULL OR [i].[Column5] > @date) AND
	[ie].[Column4] <= @date AND
	([ie].[Column5] IS NULL OR [ie].[Column5] > @date) AND
	[i].[Column2] = 2 AND
	[t].[Column1] = @date AND
	[t].[Column3] IS NOT NULL AND
	([t].[Column7] <> 0 OR [t].[Column7] IS NULL) AND
	[i].[Column2] = 2

BeforeExecute
-- SqlServer.2019

CREATE TABLE [tempdb]..[#tmp007]
(
	[Column3] NVarChar(20)   NOT NULL,
	[Prop3]   BigInt         NOT NULL,
	[Column7] Decimal(24, 6)     NULL,
	[Column8] NVarChar(20)       NULL,

	PRIMARY KEY CLUSTERED ([Column3], [Prop3])
)

BeforeExecute
-- SqlServer.2019

INSERT INTO [tempdb]..[#tmp007]
(
	[Column3],
	[Prop3],
	[Column7],
	[Column8]
)
SELECT
	[mp].[Column3],
	[lp_1].[Prop3],
	[lp_1].[Column7],
	[lp_1].[Column8]
FROM
	(
		SELECT
			MAX([gr].[Column6]) as [Max_1],
			[gr].[Column3],
			[gr].[Prop3]
		FROM
			[tempdb]..[#tmp006] [gr]
		GROUP BY
			[gr].[Column3],
			[gr].[Prop3]
	) [mp]
		CROSS APPLY (
			SELECT TOP (1)
				[lp].[Prop3],
				[lp].[Column7],
				[lp].[Column8]
			FROM
				[tempdb]..[#tmp006] [lp]
			WHERE
				[lp].[Column3] = [mp].[Column3] AND [lp].[Prop3] = [mp].[Prop3] AND
				([lp].[Column6] = [mp].[Max_1] OR [lp].[Column6] IS NULL AND [mp].[Max_1] IS NULL)
		) [lp_1]
OPTION (RECOMPILE)

BeforeExecute
-- SqlServer.2019

CREATE TABLE [tempdb]..[#tmp008]
(
	[ISIN] NVarChar(4000) NOT NULL
)

BeforeExecute
-- SqlServer.2019

INSERT INTO [tempdb]..[#tmp008]
(
	[ISIN]
)
SELECT DISTINCT
	[t].[Column3]
FROM
	[tempdb]..[#tmp007] [t]

BeforeExecute
-- SqlServer.2019

CREATE TABLE [tempdb]..[#tbl8888]
(
	[Column1] DateTime2      NOT NULL,
	[Column2] Int            NOT NULL,
	[Column3] Decimal(24, 6)     NULL,
	[Column4] VarChar(20)        NULL
)

BeforeExecute
-- SqlServer.2019
DECLARE @date Date
SET     @date = DATETIME2FROMPARTS(2018, 11, 23, 0, 0, 0, 0, 7)

INSERT INTO [tempdb]..[#tbl8888]
(
	[Column1],
	[Column2],
	[Column3],
	[Column4]
)
SELECT
	[r].[Column1],
	[r].[Column2],
	[mp].[Column7],
	[mp].[Column8]
FROM
	[tempdb]..[#tbl7777] [r]
		INNER JOIN [tempdb]..[#tbl4444] [p] ON [r].[Column1] = [p].[Column1] AND [r].[Column3] = [p].[Column2]
		INNER JOIN (
			SELECT
				[i].[Column1],
				[ii].[Column3]
			FROM
				[tempdb]..[#tbl9999] [i]
					INNER JOIN [tempdb]..[#tbl3333] [it] ON [i].[Column2] = [it].[Column1]
					INNER JOIN [tempdb]..[#tbl0202] [ii] ON [i].[Column1] = [ii].[Column1] AND 1 = [ii].[Column2]
					INNER JOIN [tempdb]..[#tmp008] [pme] ON [ii].[Column3] = [pme].[ISIN]
			WHERE
				[i].[Column4] <= @date AND
				([i].[Column5] IS NULL OR [i].[Column5] > @date) AND
				[ii].[Column4] <= @date AND
				([ii].[Column5] IS NULL OR [ii].[Column5] > @date) AND
				[it].[Column3] IN ('E', 'B')
		) [i_1] ON [r].[Column4] = [i_1].[Column1]
		INNER JOIN [tempdb]..[#tbl6666] [ie] ON [i_1].[Column1] = [ie].[Column1] AND [ie].[Column7] = 1
		INNER JOIN [tempdb]..[#tmp007] [mp] ON [i_1].[Column3] = [mp].[Column3] AND [ie].[Column6] = [mp].[Prop3]
WHERE
	[ie].[Column4] <= @date AND
	([ie].[Column5] IS NULL OR [ie].[Column5] > @date) AND
	[r].[Column1] = @date AND
	[p].[Column1] = @date AND
	[r].[Column6] IS NULL
OPTION (RECOMPILE)

BeforeExecute
-- SqlServer.2019
DECLARE @date Date
SET     @date = DATETIME2FROMPARTS(2018, 11, 23, 0, 0, 0, 0, 7)

UPDATE
	[u]
SET
	[u].[Column6] = [r_1].[Column1],
	[u].[Column7] = IIF([r_1].[Column1] IS NOT NULL, [r_1].[Column4], NULL)
FROM
	[tempdb]..[#tbl7777] [u],
	(
		SELECT
			[r].[Column6],
			TRY_CAST(([r].[Column5] * [mp].[Column3]) AS DECIMAL(28, 6)) as [Column1],
			[mp].[Column4],
			[r].[Column1] as [Column1_1],
			[r].[Column2]
		FROM
			[tempdb]..[#tbl7777] [r]
				INNER JOIN [tempdb]..[#tbl8888] [mp] ON [r].[Column1] = [mp].[Column1] AND [r].[Column2] = [mp].[Column2]
		WHERE
			[r].[Column1] = @date
	) [r_1]
WHERE
	[r_1].[Column6] IS NULL AND [u].[Column1] = [r_1].[Column1_1] AND
	[u].[Column2] = [r_1].[Column2]

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#tbl8888]

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#tmp008]

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#tmp007]

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#tmp006]

BeforeExecute
-- SqlServer.2019

CREATE TABLE [tempdb]..[#tmp006]
(
	[Column3] NVarChar(20)   NOT NULL,
	[Column6] DateTime2          NULL,
	[Column7] Decimal(24, 6)     NULL,
	[Column8] NVarChar(20)       NULL,
	[Prop3]   BigInt         NOT NULL
)

BeforeExecute
-- SqlServer.2019
DECLARE @date Date
SET     @date = DATETIME2FROMPARTS(2018, 11, 23, 0, 0, 0, 0, 7)
DECLARE @Value Date
SET     @Value = DATETIME2FROMPARTS(2018, 11, 23, 0, 0, 0, 0, 7)

INSERT INTO [tempdb]..[#tmp006]
(
	[Column3],
	[Column6],
	[Column7],
	[Column8],
	[Prop3]
)
SELECT
	[t].[Column3],
	[t].[Column6],
	[t].[Column7],
	[t].[Column8],
	[ie].[Column6]
FROM
	[tempdb]..[#tbl1010] [t]
		INNER JOIN [tempdb]..[#tbl0202] [ii] ON [t].[Column3] = [ii].[Column3] AND 1 = [ii].[Column2]
		INNER JOIN [tempdb]..[#tmp005] [ins] ON [ii].[Column1] = [ins].[Column4]
		INNER JOIN [tempdb]..[#tbl9999] [i] ON [ii].[Column1] = [i].[Column1]
		INNER JOIN [tempdb]..[#tbl5555] [be] ON [t].[Column5] = [be].[Column2]
		INNER JOIN [tempdb]..[#tbl6666] [ie] ON [ii].[Column1] = [ie].[Column1] AND [be].[Column1] = [ie].[Column6] AND [ie].[Column7] = 1
WHERE
	[ii].[Column4] <= @date AND
	([ii].[Column5] IS NULL OR [ii].[Column5] > @date) AND
	[i].[Column4] <= @date AND
	([i].[Column5] IS NULL OR [i].[Column5] > @date) AND
	[be].[Column4] <= @Value AND
	([be].[Column5] IS NULL OR [be].[Column5] > @Value) AND
	[ie].[Column4] <= @date AND
	([ie].[Column5] IS NULL OR [ie].[Column5] > @date) AND
	[i].[Column2] = 2 AND
	[t].[Column1] = @date AND
	[t].[Column3] IS NOT NULL AND
	([t].[Column7] <> 0 OR [t].[Column7] IS NULL) AND
	[i].[Column2] = 2

BeforeExecute
-- SqlServer.2019

CREATE TABLE [tempdb]..[#tmp007]
(
	[Column3] NVarChar(20)   NOT NULL,
	[Prop3]   BigInt         NOT NULL,
	[Column7] Decimal(24, 6)     NULL,
	[Column8] NVarChar(20)       NULL,

	PRIMARY KEY CLUSTERED ([Column3], [Prop3])
)

BeforeExecute
-- SqlServer.2019

INSERT INTO [tempdb]..[#tmp007]
(
	[Column3],
	[Prop3],
	[Column7],
	[Column8]
)
SELECT
	[mp].[Column3],
	[lp_1].[Prop3],
	[lp_1].[Column7],
	[lp_1].[Column8]
FROM
	(
		SELECT
			MAX([gr].[Column6]) as [Max_1],
			[gr].[Column3],
			[gr].[Prop3]
		FROM
			[tempdb]..[#tmp006] [gr]
		GROUP BY
			[gr].[Column3],
			[gr].[Prop3]
	) [mp]
		CROSS APPLY (
			SELECT TOP (1)
				[lp].[Prop3],
				[lp].[Column7],
				[lp].[Column8]
			FROM
				[tempdb]..[#tmp006] [lp]
			WHERE
				[lp].[Column3] = [mp].[Column3] AND [lp].[Prop3] = [mp].[Prop3] AND
				([lp].[Column6] = [mp].[Max_1] OR [lp].[Column6] IS NULL AND [mp].[Max_1] IS NULL)
		) [lp_1]
OPTION (RECOMPILE)

BeforeExecute
-- SqlServer.2019

CREATE TABLE [tempdb]..[#tmp008]
(
	[ISIN] NVarChar(4000) NOT NULL
)

BeforeExecute
-- SqlServer.2019

INSERT INTO [tempdb]..[#tmp008]
(
	[ISIN]
)
SELECT DISTINCT
	[t].[Column3]
FROM
	[tempdb]..[#tmp007] [t]

BeforeExecute
-- SqlServer.2019

CREATE TABLE [tempdb]..[#tbl8888]
(
	[Column1] DateTime2      NOT NULL,
	[Column2] Int            NOT NULL,
	[Column3] Decimal(24, 6)     NULL,
	[Column4] VarChar(20)        NULL
)

BeforeExecute
-- SqlServer.2019
DECLARE @date Date
SET     @date = DATETIME2FROMPARTS(2018, 11, 23, 0, 0, 0, 0, 7)

INSERT INTO [tempdb]..[#tbl8888]
(
	[Column1],
	[Column2],
	[Column3],
	[Column4]
)
SELECT
	[r].[Column1],
	[r].[Column2],
	[mp].[Column7],
	[mp].[Column8]
FROM
	[tempdb]..[#tbl7777] [r]
		INNER JOIN [tempdb]..[#tbl4444] [p] ON [r].[Column1] = [p].[Column1] AND [r].[Column3] = [p].[Column2]
		INNER JOIN (
			SELECT
				[i].[Column1],
				[ii].[Column3]
			FROM
				[tempdb]..[#tbl9999] [i]
					INNER JOIN [tempdb]..[#tbl3333] [it] ON [i].[Column2] = [it].[Column1]
					INNER JOIN [tempdb]..[#tbl0202] [ii] ON [i].[Column1] = [ii].[Column1] AND 1 = [ii].[Column2]
					INNER JOIN [tempdb]..[#tmp008] [pme] ON [ii].[Column3] = [pme].[ISIN]
			WHERE
				[i].[Column4] <= @date AND
				([i].[Column5] IS NULL OR [i].[Column5] > @date) AND
				[ii].[Column4] <= @date AND
				([ii].[Column5] IS NULL OR [ii].[Column5] > @date) AND
				[it].[Column3] IN ('E', 'B')
		) [i_1] ON [r].[Column4] = [i_1].[Column1]
		INNER JOIN [tempdb]..[#tbl6666] [ie] ON [i_1].[Column1] = [ie].[Column1] AND [ie].[Column7] = 1
		INNER JOIN [tempdb]..[#tmp007] [mp] ON [i_1].[Column3] = [mp].[Column3] AND [ie].[Column6] = [mp].[Prop3]
WHERE
	[ie].[Column4] <= @date AND
	([ie].[Column5] IS NULL OR [ie].[Column5] > @date) AND
	[r].[Column1] = @date AND
	[p].[Column1] = @date AND
	[r].[Column6] IS NULL
OPTION (RECOMPILE)

BeforeExecute
-- SqlServer.2019
DECLARE @date Date
SET     @date = DATETIME2FROMPARTS(2018, 11, 23, 0, 0, 0, 0, 7)

UPDATE
	[u]
SET
	[u].[Column6] = [r_1].[Column1],
	[u].[Column7] = IIF([r_1].[Column1] IS NOT NULL, [r_1].[Column4], NULL)
FROM
	[tempdb]..[#tbl7777] [u],
	(
		SELECT
			[r].[Column6],
			TRY_CAST(([r].[Column5] * [mp].[Column3]) AS DECIMAL(28, 6)) as [Column1],
			[mp].[Column4],
			[r].[Column1] as [Column1_1],
			[r].[Column2]
		FROM
			[tempdb]..[#tbl7777] [r]
				INNER JOIN [tempdb]..[#tbl8888] [mp] ON [r].[Column1] = [mp].[Column1] AND [r].[Column2] = [mp].[Column2]
		WHERE
			[r].[Column1] = @date
	) [r_1]
WHERE
	[r_1].[Column6] IS NULL AND [u].[Column1] = [r_1].[Column1_1] AND
	[u].[Column2] = [r_1].[Column2]

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#tbl8888]

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#tmp008]

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#tmp007]

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#tmp006]

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#tmp005]

BeforeExecute
-- SqlServer.2019

CREATE TABLE [tempdb]..[#tbl1414]
(
	[Column1] Int NOT NULL,

	PRIMARY KEY CLUSTERED ([Column1])
)

BeforeExecute
-- SqlServer.2019
DECLARE @date Date
SET     @date = DATETIME2FROMPARTS(2018, 11, 30, 0, 0, 0, 0, 7)
DECLARE @Value Date
SET     @Value = DATETIME2FROMPARTS(2018, 11, 30, 0, 0, 0, 0, 7)

SELECT
	[t].[Column1],
	CASE
		WHEN [r].[Column4] IS NOT NULL THEN [r].[Column4]
		WHEN [i].[Column8] IS NULL AND ([rd].[Column4] IS NOT NULL OR [rd2].[Column4] IS NOT NULL)
			THEN IIF([rd].[Column4] IS NOT NULL, [rd].[Column4], [rd2].[Column4])
		ELSE [i].[Column8]
	END
FROM
	[tempdb]..[#tbl9999] [i]
		LEFT JOIN (
			SELECT
				[g_1].[Column3] as [Key_1],
				MIN(IIF([g_1].[Column2] = 1, [g_1].[Column6], NULL)) as [Column4]
			FROM
				[tempdb]..[#tbl1515] [g_1]
			WHERE
				[g_1].[Column4] <= @date AND ([g_1].[Column5] IS NULL OR [g_1].[Column5] > @date) AND
				[g_1].[Column3] IS NOT NULL
			GROUP BY
				[g_1].[Column3]
		) [rd] ON [i].[Column2] = [rd].[Key_1] OR [i].[Column2] IS NULL AND [rd].[Key_1] IS NULL
		LEFT JOIN (
			SELECT
				MIN(IIF([g_2].[Column2] = 1, [g_2].[Column6], NULL)) as [Column4]
			FROM
				[tempdb]..[#tbl1515] [g_2]
			WHERE
				[g_2].[Column4] <= @date AND ([g_2].[Column5] IS NULL OR [g_2].[Column5] > @date) AND
				[g_2].[Column3] IS NULL
			GROUP BY
				[g_2].[Column3]
		) [rd2] ON 1=1
		LEFT JOIN (
			SELECT
				[g_3].[Column2] as [Key_1],
				MIN(IIF([g_3].[Column3] = 1, [g_3].[Column4], NULL)) as [Column4]
			FROM
				[tempdb]..[#tbl0101] [g_3]
			WHERE
				[g_3].[Column5] <= @Value AND
				([g_3].[Column6] IS NULL OR [g_3].[Column6] > @Value) AND
				[g_3].[Column7] = 555 AND
				[g_3].[Column8] = 1
			GROUP BY
				[g_3].[Column2]
		) [r] ON [i].[Column1] = [r].[Key_1]
		INNER JOIN [tempdb]..[#tbl1414] [t] ON [i].[Column1] = [t].[Column1]
WHERE
	[i].[Column4] <= @date AND ([i].[Column5] IS NULL OR [i].[Column5] > @date)

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#tbl1414]

BeforeExecute
-- SqlServer.2019

CREATE TABLE [tempdb]..[#tmp001]
(
	[Column6] BigInt NOT NULL
)

BeforeExecute
-- SqlServer.2019
DECLARE @date Date
SET     @date = DATETIME2FROMPARTS(2018, 11, 27, 0, 0, 0, 0, 7)

INSERT INTO [tempdb]..[#tmp001]
(
	[Column6]
)
SELECT DISTINCT
	[ex].[Column6]
FROM
	(
		SELECT DISTINCT
			[pc].[Column4]
		FROM
			[tempdb]..[#tbl7777] [pc]
	) [t1]
		INNER JOIN [tempdb]..[#tbl6666] [ex] ON [t1].[Column4] = [ex].[Column1]
WHERE
	[ex].[Column4] <= @date AND ([ex].[Column5] IS NULL OR [ex].[Column5] > @date)

BeforeExecute
-- SqlServer.2019

CREATE TABLE [tempdb]..[#tmp002]
(
	[Column2] NVarChar(20)   NOT NULL,
	[Column6] DateTime2          NULL,
	[Column7] Decimal(24, 6)     NULL,
	[Column8] NVarChar(20)       NULL,
	[Prop3]   BigInt         NOT NULL
)

BeforeExecute
-- SqlServer.2019
DECLARE @date Date
SET     @date = DATETIME2FROMPARTS(2018, 11, 27, 0, 0, 0, 0, 7)
DECLARE @Value Date
SET     @Value = DATETIME2FROMPARTS(2018, 11, 27, 0, 0, 0, 0, 7)

INSERT INTO [tempdb]..[#tmp002]
(
	[Column2],
	[Column6],
	[Column7],
	[Column8],
	[Prop3]
)
SELECT
	[t].[Column2],
	[t].[Column6],
	[t].[Column7],
	[t].[Column8],
	IIF([e].[Column2] IS NOT NULL, [e].[Column1], [be].[Column1])
FROM
	[tempdb]..[#tbl1010] [t]
		LEFT JOIN [tempdb]..[#tbl1313] [e]
			INNER JOIN [tempdb]..[#tmp001] [tex1] ON [e].[Column1] = [tex1].[Column6]
		ON [t].[Column5] = [e].[Column2] AND [e].[Column4] <= @date AND ([e].[Column5] IS NULL OR [e].[Column5] > @date)
		LEFT JOIN [tempdb]..[#tbl5555] [be]
			INNER JOIN [tempdb]..[#tmp001] [tex2] ON [be].[Column1] = [tex2].[Column6]
		ON [t].[Column5] = [be].[Column2] AND [be].[Column4] <= @Value AND ([be].[Column5] IS NULL OR [be].[Column5] > @Value)
WHERE
	[t].[Column1] = @date AND
	[t].[Column2] IS NOT NULL AND
	([t].[Column7] <> 0 OR [t].[Column7] IS NULL) AND
	([e].[Column2] IS NOT NULL OR [be].[Column2] IS NOT NULL)

BeforeExecute
-- SqlServer.2019

CREATE TABLE [tempdb]..[#tmp003]
(
	[Column2] NVarChar(20)   NOT NULL,
	[Prop3]   BigInt         NOT NULL,
	[Column3] Decimal(24, 6)     NULL,
	[Column4] NVarChar(20)       NULL,

	PRIMARY KEY CLUSTERED ([Column2], [Prop3])
)

BeforeExecute
-- SqlServer.2019

INSERT INTO [tempdb]..[#tmp003]
(
	[Column2],
	[Prop3],
	[Column3],
	[Column4]
)
SELECT
	[mp].[Column2],
	[lp_1].[Prop3],
	[lp_1].[Column7],
	[lp_1].[Column8]
FROM
	(
		SELECT
			MAX([gr].[Column6]) as [Max_1],
			[gr].[Column2],
			[gr].[Prop3]
		FROM
			[tempdb]..[#tmp002] [gr]
		GROUP BY
			[gr].[Column2],
			[gr].[Prop3]
	) [mp]
		CROSS APPLY (
			SELECT TOP (1)
				[lp].[Prop3],
				[lp].[Column7],
				[lp].[Column8]
			FROM
				[tempdb]..[#tmp002] [lp]
			WHERE
				[lp].[Column2] = [mp].[Column2] AND [lp].[Prop3] = [mp].[Prop3] AND
				([lp].[Column6] = [mp].[Max_1] OR [lp].[Column6] IS NULL AND [mp].[Max_1] IS NULL)
		) [lp_1]
OPTION (RECOMPILE)

BeforeExecute
-- SqlServer.2019

CREATE TABLE [tempdb]..[#tmp004]
(
	[Column2] NVarChar(4000) NOT NULL
)

BeforeExecute
-- SqlServer.2019

INSERT INTO [tempdb]..[#tmp004]
(
	[Column2]
)
SELECT DISTINCT
	[t].[Column2]
FROM
	[tempdb]..[#tmp003] [t]

BeforeExecute
-- SqlServer.2019

CREATE TABLE [tempdb]..[#tbl8888]
(
	[Column1] DateTime2      NOT NULL,
	[Column2] Int            NOT NULL,
	[Column3] Decimal(24, 6)     NULL,
	[Column4] VarChar(20)        NULL
)

BeforeExecute
-- SqlServer.2019
DECLARE @date Date
SET     @date = DATETIME2FROMPARTS(2018, 11, 27, 0, 0, 0, 0, 7)

INSERT INTO [tempdb]..[#tbl8888]
(
	[Column1],
	[Column2],
	[Column3],
	[Column4]
)
SELECT
	[pc].[Column1],
	[pc].[Column2],
	[mp].[Column3],
	[mp].[Column4]
FROM
	[tempdb]..[#tbl7777] [pc]
		INNER JOIN [tempdb]..[#tbl4444] [p] ON [pc].[Column1] = [p].[Column1] AND [pc].[Column3] = [p].[Column2]
		INNER JOIN (
			SELECT
				[i].[Column1],
				[i].[Column3] as [PmeID]
			FROM
				[tempdb]..[#tbl9999] [i]
					INNER JOIN [tempdb]..[#tbl3333] [it] ON [i].[Column2] = [it].[Column1]
					INNER JOIN [tempdb]..[#tmp004] [pme] ON [i].[Column3] = [pme].[Column2]
			WHERE
				[i].[Column4] <= @date AND ([i].[Column5] IS NULL OR [i].[Column5] > @date) AND
				[it].[Column3] IN ('E', 'B')
		) [i_1] ON [pc].[Column4] = [i_1].[Column1]
		INNER JOIN [tempdb]..[#tbl6666] [ie] ON [i_1].[Column1] = [ie].[Column1] AND [ie].[Column7] = 1
		INNER JOIN [tempdb]..[#tmp003] [mp] ON [i_1].[PmeID] = [mp].[Column2] AND [ie].[Column6] = [mp].[Prop3]
WHERE
	[ie].[Column4] <= @date AND
	([ie].[Column5] IS NULL OR [ie].[Column5] > @date) AND
	[pc].[Column1] = @date AND
	[p].[Column1] = @date
OPTION (RECOMPILE)

BeforeExecute
-- SqlServer.2019
DECLARE @date Date
SET     @date = DATETIME2FROMPARTS(2018, 11, 27, 0, 0, 0, 0, 7)

UPDATE
	[pc]
SET
	[pc].[Column6] = TRY_CAST(([pc].[Column5] * [mp].[Column3]) AS DECIMAL(28, 6)),
	[pc].[Column7] = IIF(TRY_CAST(([pc].[Column5] * [mp].[Column3]) AS DECIMAL(28, 6)) IS NOT NULL, [mp].[Column4], NULL)
FROM
	[tempdb]..[#tbl7777] [pc]
		INNER JOIN [tempdb]..[#tbl8888] [mp] ON [pc].[Column1] = [mp].[Column1] AND [pc].[Column2] = [mp].[Column2]
WHERE
	[pc].[Column1] = @date

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#tbl8888]

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#tmp004]

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#tmp003]

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#tmp002]

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#tmp001]

BeforeExecute
-- SqlServer.2019

CREATE TABLE [tempdb]..[#tmp005]
(
	[Column4] Int NOT NULL
)

BeforeExecute
-- SqlServer.2019

INSERT INTO [tempdb]..[#tmp005]
(
	[Column4]
)
SELECT DISTINCT
	[pc].[Column4]
FROM
	[tempdb]..[#tbl7777] [pc]

BeforeExecute
-- SqlServer.2019

CREATE TABLE [tempdb]..[#tmp002]
(
	[Column2] NVarChar(20)   NOT NULL,
	[Column6] DateTime2          NULL,
	[Column7] Decimal(24, 6)     NULL,
	[Column8] NVarChar(20)       NULL,
	[Prop3]   BigInt         NOT NULL
)

BeforeExecute
-- SqlServer.2019
DECLARE @date Date
SET     @date = DATETIME2FROMPARTS(2018, 11, 27, 0, 0, 0, 0, 7)

INSERT INTO [tempdb]..[#tmp002]
(
	[Column2],
	[Column6],
	[Column7],
	[Column8],
	[Prop3]
)
SELECT
	[t].[Column2],
	[t].[Column6],
	[t].[Column7],
	[t].[Column8],
	[ie].[Column6]
FROM
	[tempdb]..[#tbl1010] [t]
		INNER JOIN [tempdb]..[#tbl1212] [iei] ON [t].[Column4] = Replace([iei].[Column6], N' ', N'-')
		INNER JOIN [tempdb]..[#tmp005] [ins] ON [iei].[Column1] = [ins].[Column4]
		INNER JOIN [tempdb]..[#tbl9999] [i] ON [iei].[Column1] = [i].[Column1]
		INNER JOIN [tempdb]..[#tbl6666] [ie] ON [iei].[Column1] = [ie].[Column1] AND [iei].[Column2] = [ie].[Column6]
WHERE
	[iei].[Column4] <= @date AND
	([iei].[Column5] IS NULL OR [iei].[Column5] > @date) AND
	[i].[Column4] <= @date AND
	([i].[Column5] IS NULL OR [i].[Column5] > @date) AND
	[ie].[Column4] <= @date AND
	([ie].[Column5] IS NULL OR [ie].[Column5] > @date) AND
	[t].[Column1] = @date AND
	[iei].[Column3] = 3 AND
	[ie].[Column7] = 1 AND
	[t].[Column2] IS NOT NULL AND
	[i].[Column2] = 1

BeforeExecute
-- SqlServer.2019

CREATE TABLE [tempdb]..[#tmp003]
(
	[Column2] NVarChar(20)   NOT NULL,
	[Prop3]   BigInt         NOT NULL,
	[Column3] Decimal(24, 6)     NULL,
	[Column4] NVarChar(20)       NULL,

	PRIMARY KEY CLUSTERED ([Column2], [Prop3])
)

BeforeExecute
-- SqlServer.2019

INSERT INTO [tempdb]..[#tmp003]
(
	[Column2],
	[Prop3],
	[Column3],
	[Column4]
)
SELECT
	[mp].[Column2],
	[lp_1].[Prop3],
	[lp_1].[Column7],
	[lp_1].[Column8]
FROM
	(
		SELECT
			MAX([gr].[Column6]) as [Max_1],
			[gr].[Column2],
			[gr].[Prop3]
		FROM
			[tempdb]..[#tmp002] [gr]
		GROUP BY
			[gr].[Column2],
			[gr].[Prop3]
	) [mp]
		CROSS APPLY (
			SELECT TOP (1)
				[lp].[Prop3],
				[lp].[Column7],
				[lp].[Column8]
			FROM
				[tempdb]..[#tmp002] [lp]
			WHERE
				[lp].[Column2] = [mp].[Column2] AND [lp].[Prop3] = [mp].[Prop3] AND
				([lp].[Column6] = [mp].[Max_1] OR [lp].[Column6] IS NULL AND [mp].[Max_1] IS NULL)
		) [lp_1]
OPTION (RECOMPILE)

BeforeExecute
-- SqlServer.2019

CREATE TABLE [tempdb]..[#tmp004]
(
	[Column2] NVarChar(4000) NOT NULL
)

BeforeExecute
-- SqlServer.2019

INSERT INTO [tempdb]..[#tmp004]
(
	[Column2]
)
SELECT DISTINCT
	[t].[Column2]
FROM
	[tempdb]..[#tmp003] [t]

BeforeExecute
-- SqlServer.2019

CREATE TABLE [tempdb]..[#tbl8888]
(
	[Column1] DateTime2      NOT NULL,
	[Column2] Int            NOT NULL,
	[Column3] Decimal(24, 6)     NULL,
	[Column4] VarChar(20)        NULL
)

BeforeExecute
-- SqlServer.2019
DECLARE @date Date
SET     @date = DATETIME2FROMPARTS(2018, 11, 27, 0, 0, 0, 0, 7)

INSERT INTO [tempdb]..[#tbl8888]
(
	[Column1],
	[Column2],
	[Column3],
	[Column4]
)
SELECT
	[pc].[Column1],
	[pc].[Column2],
	[mp].[Column3],
	[mp].[Column4]
FROM
	[tempdb]..[#tbl7777] [pc]
		INNER JOIN [tempdb]..[#tbl4444] [p] ON [pc].[Column1] = [p].[Column1] AND [pc].[Column3] = [p].[Column2]
		INNER JOIN (
			SELECT
				[i].[Column1],
				[i].[Column3] as [PmeID]
			FROM
				[tempdb]..[#tbl9999] [i]
					INNER JOIN [tempdb]..[#tbl3333] [it] ON [i].[Column2] = [it].[Column1]
					INNER JOIN [tempdb]..[#tmp004] [pme] ON [i].[Column3] = [pme].[Column2]
			WHERE
				[i].[Column4] <= @date AND ([i].[Column5] IS NULL OR [i].[Column5] > @date) AND
				[it].[Column3] IN ('E', 'B')
		) [i_1] ON [pc].[Column4] = [i_1].[Column1]
		INNER JOIN [tempdb]..[#tbl6666] [ie] ON [i_1].[Column1] = [ie].[Column1] AND [ie].[Column7] = 1
		INNER JOIN [tempdb]..[#tmp003] [mp] ON [i_1].[PmeID] = [mp].[Column2] AND [ie].[Column6] = [mp].[Prop3]
WHERE
	[ie].[Column4] <= @date AND
	([ie].[Column5] IS NULL OR [ie].[Column5] > @date) AND
	[pc].[Column1] = @date AND
	[p].[Column1] = @date
OPTION (RECOMPILE)

BeforeExecute
-- SqlServer.2019
DECLARE @date Date
SET     @date = DATETIME2FROMPARTS(2018, 11, 27, 0, 0, 0, 0, 7)

UPDATE
	[pc]
SET
	[pc].[Column6] = TRY_CAST(([pc].[Column5] * [mp].[Column3]) AS DECIMAL(28, 6)),
	[pc].[Column7] = IIF(TRY_CAST(([pc].[Column5] * [mp].[Column3]) AS DECIMAL(28, 6)) IS NOT NULL, [mp].[Column4], NULL)
FROM
	[tempdb]..[#tbl7777] [pc]
		INNER JOIN [tempdb]..[#tbl8888] [mp] ON [pc].[Column1] = [mp].[Column1] AND [pc].[Column2] = [mp].[Column2]
WHERE
	[pc].[Column1] = @date

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#tbl8888]

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#tmp004]

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#tmp003]

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#tmp002]

BeforeExecute
-- SqlServer.2019

CREATE TABLE [tempdb]..[#tmp006]
(
	[Column3] NVarChar(20)   NOT NULL,
	[Column6] DateTime2          NULL,
	[Column7] Decimal(24, 6)     NULL,
	[Column8] NVarChar(20)       NULL,
	[Prop3]   BigInt         NOT NULL
)

BeforeExecute
-- SqlServer.2019
DECLARE @date Date
SET     @date = DATETIME2FROMPARTS(2018, 11, 27, 0, 0, 0, 0, 7)

INSERT INTO [tempdb]..[#tmp006]
(
	[Column3],
	[Column6],
	[Column7],
	[Column8],
	[Prop3]
)
SELECT
	[t].[Column3],
	[t].[Column6],
	[t].[Column7],
	[t].[Column8],
	[ie].[Column6]
FROM
	[tempdb]..[#tbl1010] [t]
		INNER JOIN [tempdb]..[#tbl1212] [iei] ON [t].[Column4] = Replace([iei].[Column6], N' ', N'-') AND 2 = [iei].[Column3]
		INNER JOIN [tempdb]..[#tmp005] [ins] ON [iei].[Column1] = [ins].[Column4]
		INNER JOIN [tempdb]..[#tbl9999] [i] ON [iei].[Column1] = [i].[Column1]
		INNER JOIN [tempdb]..[#tbl6666] [ie] ON [iei].[Column1] = [ie].[Column1] AND [iei].[Column2] = [ie].[Column6] AND [ie].[Column7] = 1
WHERE
	[iei].[Column4] <= @date AND
	([iei].[Column5] IS NULL OR [iei].[Column5] > @date) AND
	[i].[Column4] <= @date AND
	([i].[Column5] IS NULL OR [i].[Column5] > @date) AND
	[ie].[Column4] <= @date AND
	([ie].[Column5] IS NULL OR [ie].[Column5] > @date) AND
	[i].[Column2] = 2 AND
	[t].[Column1] = @date AND
	[t].[Column3] IS NOT NULL AND
	([t].[Column7] <> 0 OR [t].[Column7] IS NULL) AND
	[i].[Column2] = 2

BeforeExecute
-- SqlServer.2019

CREATE TABLE [tempdb]..[#tmp007]
(
	[Column3] NVarChar(20)   NOT NULL,
	[Prop3]   BigInt         NOT NULL,
	[Column7] Decimal(24, 6)     NULL,
	[Column8] NVarChar(20)       NULL,

	PRIMARY KEY CLUSTERED ([Column3], [Prop3])
)

BeforeExecute
-- SqlServer.2019

INSERT INTO [tempdb]..[#tmp007]
(
	[Column3],
	[Prop3],
	[Column7],
	[Column8]
)
SELECT
	[mp].[Column3],
	[lp_1].[Prop3],
	[lp_1].[Column7],
	[lp_1].[Column8]
FROM
	(
		SELECT
			MAX([gr].[Column6]) as [Max_1],
			[gr].[Column3],
			[gr].[Prop3]
		FROM
			[tempdb]..[#tmp006] [gr]
		GROUP BY
			[gr].[Column3],
			[gr].[Prop3]
	) [mp]
		CROSS APPLY (
			SELECT TOP (1)
				[lp].[Prop3],
				[lp].[Column7],
				[lp].[Column8]
			FROM
				[tempdb]..[#tmp006] [lp]
			WHERE
				[lp].[Column3] = [mp].[Column3] AND [lp].[Prop3] = [mp].[Prop3] AND
				([lp].[Column6] = [mp].[Max_1] OR [lp].[Column6] IS NULL AND [mp].[Max_1] IS NULL)
		) [lp_1]
OPTION (RECOMPILE)

BeforeExecute
-- SqlServer.2019

CREATE TABLE [tempdb]..[#tmp008]
(
	[ISIN] NVarChar(4000) NOT NULL
)

BeforeExecute
-- SqlServer.2019

INSERT INTO [tempdb]..[#tmp008]
(
	[ISIN]
)
SELECT DISTINCT
	[t].[Column3]
FROM
	[tempdb]..[#tmp007] [t]

BeforeExecute
-- SqlServer.2019

CREATE TABLE [tempdb]..[#tbl8888]
(
	[Column1] DateTime2      NOT NULL,
	[Column2] Int            NOT NULL,
	[Column3] Decimal(24, 6)     NULL,
	[Column4] VarChar(20)        NULL
)

BeforeExecute
-- SqlServer.2019
DECLARE @date Date
SET     @date = DATETIME2FROMPARTS(2018, 11, 27, 0, 0, 0, 0, 7)

INSERT INTO [tempdb]..[#tbl8888]
(
	[Column1],
	[Column2],
	[Column3],
	[Column4]
)
SELECT
	[r].[Column1],
	[r].[Column2],
	[mp].[Column7],
	[mp].[Column8]
FROM
	[tempdb]..[#tbl7777] [r]
		INNER JOIN [tempdb]..[#tbl4444] [p] ON [r].[Column1] = [p].[Column1] AND [r].[Column3] = [p].[Column2]
		INNER JOIN (
			SELECT
				[i].[Column1],
				[ii].[Column3]
			FROM
				[tempdb]..[#tbl9999] [i]
					INNER JOIN [tempdb]..[#tbl3333] [it] ON [i].[Column2] = [it].[Column1]
					INNER JOIN [tempdb]..[#tbl0202] [ii] ON [i].[Column1] = [ii].[Column1] AND 1 = [ii].[Column2]
					INNER JOIN [tempdb]..[#tmp008] [pme] ON [ii].[Column3] = [pme].[ISIN]
			WHERE
				[i].[Column4] <= @date AND
				([i].[Column5] IS NULL OR [i].[Column5] > @date) AND
				[ii].[Column4] <= @date AND
				([ii].[Column5] IS NULL OR [ii].[Column5] > @date) AND
				[it].[Column3] IN ('E', 'B')
		) [i_1] ON [r].[Column4] = [i_1].[Column1]
		INNER JOIN [tempdb]..[#tbl6666] [ie] ON [i_1].[Column1] = [ie].[Column1] AND [ie].[Column7] = 1
		INNER JOIN [tempdb]..[#tmp007] [mp] ON [i_1].[Column3] = [mp].[Column3] AND [ie].[Column6] = [mp].[Prop3]
WHERE
	[ie].[Column4] <= @date AND
	([ie].[Column5] IS NULL OR [ie].[Column5] > @date) AND
	[r].[Column1] = @date AND
	[p].[Column1] = @date AND
	[r].[Column6] IS NULL
OPTION (RECOMPILE)

BeforeExecute
-- SqlServer.2019
DECLARE @date Date
SET     @date = DATETIME2FROMPARTS(2018, 11, 27, 0, 0, 0, 0, 7)

UPDATE
	[u]
SET
	[u].[Column6] = [r_1].[Column1],
	[u].[Column7] = IIF([r_1].[Column1] IS NOT NULL, [r_1].[Column4], NULL)
FROM
	[tempdb]..[#tbl7777] [u],
	(
		SELECT
			[r].[Column6],
			TRY_CAST(([r].[Column5] * [mp].[Column3]) AS DECIMAL(28, 6)) as [Column1],
			[mp].[Column4],
			[r].[Column1] as [Column1_1],
			[r].[Column2]
		FROM
			[tempdb]..[#tbl7777] [r]
				INNER JOIN [tempdb]..[#tbl8888] [mp] ON [r].[Column1] = [mp].[Column1] AND [r].[Column2] = [mp].[Column2]
		WHERE
			[r].[Column1] = @date
	) [r_1]
WHERE
	[r_1].[Column6] IS NULL AND [u].[Column1] = [r_1].[Column1_1] AND
	[u].[Column2] = [r_1].[Column2]

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#tbl8888]

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#tmp008]

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#tmp007]

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#tmp006]

BeforeExecute
-- SqlServer.2019

CREATE TABLE [tempdb]..[#tmp006]
(
	[Column3] NVarChar(20)   NOT NULL,
	[Column6] DateTime2          NULL,
	[Column7] Decimal(24, 6)     NULL,
	[Column8] NVarChar(20)       NULL,
	[Prop3]   BigInt         NOT NULL
)

BeforeExecute
-- SqlServer.2019
DECLARE @date Date
SET     @date = DATETIME2FROMPARTS(2018, 11, 27, 0, 0, 0, 0, 7)

INSERT INTO [tempdb]..[#tmp006]
(
	[Column3],
	[Column6],
	[Column7],
	[Column8],
	[Prop3]
)
SELECT
	[t].[Column3],
	[t].[Column6],
	[t].[Column7],
	[t].[Column8],
	[ie].[Column6]
FROM
	[tempdb]..[#tbl1010] [t]
		INNER JOIN [tempdb]..[#tbl1212] [iei] ON [t].[Column4] = Replace([iei].[Column6], N' ', N'-') AND 3 = [iei].[Column3]
		INNER JOIN [tempdb]..[#tmp005] [ins] ON [iei].[Column1] = [ins].[Column4]
		INNER JOIN [tempdb]..[#tbl9999] [i] ON [iei].[Column1] = [i].[Column1]
		INNER JOIN [tempdb]..[#tbl6666] [ie] ON [iei].[Column1] = [ie].[Column1] AND [iei].[Column2] = [ie].[Column6] AND [ie].[Column7] = 1
WHERE
	[iei].[Column4] <= @date AND
	([iei].[Column5] IS NULL OR [iei].[Column5] > @date) AND
	[i].[Column4] <= @date AND
	([i].[Column5] IS NULL OR [i].[Column5] > @date) AND
	[ie].[Column4] <= @date AND
	([ie].[Column5] IS NULL OR [ie].[Column5] > @date) AND
	[i].[Column2] = 2 AND
	[t].[Column1] = @date AND
	[t].[Column3] IS NOT NULL AND
	([t].[Column7] <> 0 OR [t].[Column7] IS NULL) AND
	[i].[Column2] = 2

BeforeExecute
-- SqlServer.2019

CREATE TABLE [tempdb]..[#tmp007]
(
	[Column3] NVarChar(20)   NOT NULL,
	[Prop3]   BigInt         NOT NULL,
	[Column7] Decimal(24, 6)     NULL,
	[Column8] NVarChar(20)       NULL,

	PRIMARY KEY CLUSTERED ([Column3], [Prop3])
)

BeforeExecute
-- SqlServer.2019

INSERT INTO [tempdb]..[#tmp007]
(
	[Column3],
	[Prop3],
	[Column7],
	[Column8]
)
SELECT
	[mp].[Column3],
	[lp_1].[Prop3],
	[lp_1].[Column7],
	[lp_1].[Column8]
FROM
	(
		SELECT
			MAX([gr].[Column6]) as [Max_1],
			[gr].[Column3],
			[gr].[Prop3]
		FROM
			[tempdb]..[#tmp006] [gr]
		GROUP BY
			[gr].[Column3],
			[gr].[Prop3]
	) [mp]
		CROSS APPLY (
			SELECT TOP (1)
				[lp].[Prop3],
				[lp].[Column7],
				[lp].[Column8]
			FROM
				[tempdb]..[#tmp006] [lp]
			WHERE
				[lp].[Column3] = [mp].[Column3] AND [lp].[Prop3] = [mp].[Prop3] AND
				([lp].[Column6] = [mp].[Max_1] OR [lp].[Column6] IS NULL AND [mp].[Max_1] IS NULL)
		) [lp_1]
OPTION (RECOMPILE)

BeforeExecute
-- SqlServer.2019

CREATE TABLE [tempdb]..[#tmp008]
(
	[ISIN] NVarChar(4000) NOT NULL
)

BeforeExecute
-- SqlServer.2019

INSERT INTO [tempdb]..[#tmp008]
(
	[ISIN]
)
SELECT DISTINCT
	[t].[Column3]
FROM
	[tempdb]..[#tmp007] [t]

BeforeExecute
-- SqlServer.2019

CREATE TABLE [tempdb]..[#tbl8888]
(
	[Column1] DateTime2      NOT NULL,
	[Column2] Int            NOT NULL,
	[Column3] Decimal(24, 6)     NULL,
	[Column4] VarChar(20)        NULL
)

BeforeExecute
-- SqlServer.2019
DECLARE @date Date
SET     @date = DATETIME2FROMPARTS(2018, 11, 27, 0, 0, 0, 0, 7)

INSERT INTO [tempdb]..[#tbl8888]
(
	[Column1],
	[Column2],
	[Column3],
	[Column4]
)
SELECT
	[r].[Column1],
	[r].[Column2],
	[mp].[Column7],
	[mp].[Column8]
FROM
	[tempdb]..[#tbl7777] [r]
		INNER JOIN [tempdb]..[#tbl4444] [p] ON [r].[Column1] = [p].[Column1] AND [r].[Column3] = [p].[Column2]
		INNER JOIN (
			SELECT
				[i].[Column1],
				[ii].[Column3]
			FROM
				[tempdb]..[#tbl9999] [i]
					INNER JOIN [tempdb]..[#tbl3333] [it] ON [i].[Column2] = [it].[Column1]
					INNER JOIN [tempdb]..[#tbl0202] [ii] ON [i].[Column1] = [ii].[Column1] AND 1 = [ii].[Column2]
					INNER JOIN [tempdb]..[#tmp008] [pme] ON [ii].[Column3] = [pme].[ISIN]
			WHERE
				[i].[Column4] <= @date AND
				([i].[Column5] IS NULL OR [i].[Column5] > @date) AND
				[ii].[Column4] <= @date AND
				([ii].[Column5] IS NULL OR [ii].[Column5] > @date) AND
				[it].[Column3] IN ('E', 'B')
		) [i_1] ON [r].[Column4] = [i_1].[Column1]
		INNER JOIN [tempdb]..[#tbl6666] [ie] ON [i_1].[Column1] = [ie].[Column1] AND [ie].[Column7] = 1
		INNER JOIN [tempdb]..[#tmp007] [mp] ON [i_1].[Column3] = [mp].[Column3] AND [ie].[Column6] = [mp].[Prop3]
WHERE
	[ie].[Column4] <= @date AND
	([ie].[Column5] IS NULL OR [ie].[Column5] > @date) AND
	[r].[Column1] = @date AND
	[p].[Column1] = @date AND
	[r].[Column6] IS NULL
OPTION (RECOMPILE)

BeforeExecute
-- SqlServer.2019
DECLARE @date Date
SET     @date = DATETIME2FROMPARTS(2018, 11, 27, 0, 0, 0, 0, 7)

UPDATE
	[u]
SET
	[u].[Column6] = [r_1].[Column1],
	[u].[Column7] = IIF([r_1].[Column1] IS NOT NULL, [r_1].[Column4], NULL)
FROM
	[tempdb]..[#tbl7777] [u],
	(
		SELECT
			[r].[Column6],
			TRY_CAST(([r].[Column5] * [mp].[Column3]) AS DECIMAL(28, 6)) as [Column1],
			[mp].[Column4],
			[r].[Column1] as [Column1_1],
			[r].[Column2]
		FROM
			[tempdb]..[#tbl7777] [r]
				INNER JOIN [tempdb]..[#tbl8888] [mp] ON [r].[Column1] = [mp].[Column1] AND [r].[Column2] = [mp].[Column2]
		WHERE
			[r].[Column1] = @date
	) [r_1]
WHERE
	[r_1].[Column6] IS NULL AND [u].[Column1] = [r_1].[Column1_1] AND
	[u].[Column2] = [r_1].[Column2]

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#tbl8888]

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#tmp008]

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#tmp007]

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#tmp006]

BeforeExecute
-- SqlServer.2019

CREATE TABLE [tempdb]..[#tmp006]
(
	[Column3] NVarChar(20)   NOT NULL,
	[Column6] DateTime2          NULL,
	[Column7] Decimal(24, 6)     NULL,
	[Column8] NVarChar(20)       NULL,
	[Prop3]   BigInt         NOT NULL
)

BeforeExecute
-- SqlServer.2019
DECLARE @date Date
SET     @date = DATETIME2FROMPARTS(2018, 11, 27, 0, 0, 0, 0, 7)
DECLARE @Value Date
SET     @Value = DATETIME2FROMPARTS(2018, 11, 27, 0, 0, 0, 0, 7)

INSERT INTO [tempdb]..[#tmp006]
(
	[Column3],
	[Column6],
	[Column7],
	[Column8],
	[Prop3]
)
SELECT
	[t].[Column3],
	[t].[Column6],
	[t].[Column7],
	[t].[Column8],
	[ie].[Column6]
FROM
	[tempdb]..[#tbl1010] [t]
		INNER JOIN [tempdb]..[#tbl0202] [ii] ON [t].[Column3] = [ii].[Column3] AND 1 = [ii].[Column2]
		INNER JOIN [tempdb]..[#tmp005] [ins] ON [ii].[Column1] = [ins].[Column4]
		INNER JOIN [tempdb]..[#tbl9999] [i] ON [ii].[Column1] = [i].[Column1]
		INNER JOIN [tempdb]..[#tbl5555] [be] ON [t].[Column5] = [be].[Column2]
		INNER JOIN [tempdb]..[#tbl6666] [ie] ON [ii].[Column1] = [ie].[Column1] AND [be].[Column1] = [ie].[Column6] AND [ie].[Column7] = 1
WHERE
	[ii].[Column4] <= @date AND
	([ii].[Column5] IS NULL OR [ii].[Column5] > @date) AND
	[i].[Column4] <= @date AND
	([i].[Column5] IS NULL OR [i].[Column5] > @date) AND
	[be].[Column4] <= @Value AND
	([be].[Column5] IS NULL OR [be].[Column5] > @Value) AND
	[ie].[Column4] <= @date AND
	([ie].[Column5] IS NULL OR [ie].[Column5] > @date) AND
	[i].[Column2] = 2 AND
	[t].[Column1] = @date AND
	[t].[Column3] IS NOT NULL AND
	([t].[Column7] <> 0 OR [t].[Column7] IS NULL) AND
	[i].[Column2] = 2

BeforeExecute
-- SqlServer.2019

CREATE TABLE [tempdb]..[#tmp007]
(
	[Column3] NVarChar(20)   NOT NULL,
	[Prop3]   BigInt         NOT NULL,
	[Column7] Decimal(24, 6)     NULL,
	[Column8] NVarChar(20)       NULL,

	PRIMARY KEY CLUSTERED ([Column3], [Prop3])
)

BeforeExecute
-- SqlServer.2019

INSERT INTO [tempdb]..[#tmp007]
(
	[Column3],
	[Prop3],
	[Column7],
	[Column8]
)
SELECT
	[mp].[Column3],
	[lp_1].[Prop3],
	[lp_1].[Column7],
	[lp_1].[Column8]
FROM
	(
		SELECT
			MAX([gr].[Column6]) as [Max_1],
			[gr].[Column3],
			[gr].[Prop3]
		FROM
			[tempdb]..[#tmp006] [gr]
		GROUP BY
			[gr].[Column3],
			[gr].[Prop3]
	) [mp]
		CROSS APPLY (
			SELECT TOP (1)
				[lp].[Prop3],
				[lp].[Column7],
				[lp].[Column8]
			FROM
				[tempdb]..[#tmp006] [lp]
			WHERE
				[lp].[Column3] = [mp].[Column3] AND [lp].[Prop3] = [mp].[Prop3] AND
				([lp].[Column6] = [mp].[Max_1] OR [lp].[Column6] IS NULL AND [mp].[Max_1] IS NULL)
		) [lp_1]
OPTION (RECOMPILE)

BeforeExecute
-- SqlServer.2019

CREATE TABLE [tempdb]..[#tmp008]
(
	[ISIN] NVarChar(4000) NOT NULL
)

BeforeExecute
-- SqlServer.2019

INSERT INTO [tempdb]..[#tmp008]
(
	[ISIN]
)
SELECT DISTINCT
	[t].[Column3]
FROM
	[tempdb]..[#tmp007] [t]

BeforeExecute
-- SqlServer.2019

CREATE TABLE [tempdb]..[#tbl8888]
(
	[Column1] DateTime2      NOT NULL,
	[Column2] Int            NOT NULL,
	[Column3] Decimal(24, 6)     NULL,
	[Column4] VarChar(20)        NULL
)

BeforeExecute
-- SqlServer.2019
DECLARE @date Date
SET     @date = DATETIME2FROMPARTS(2018, 11, 27, 0, 0, 0, 0, 7)

INSERT INTO [tempdb]..[#tbl8888]
(
	[Column1],
	[Column2],
	[Column3],
	[Column4]
)
SELECT
	[r].[Column1],
	[r].[Column2],
	[mp].[Column7],
	[mp].[Column8]
FROM
	[tempdb]..[#tbl7777] [r]
		INNER JOIN [tempdb]..[#tbl4444] [p] ON [r].[Column1] = [p].[Column1] AND [r].[Column3] = [p].[Column2]
		INNER JOIN (
			SELECT
				[i].[Column1],
				[ii].[Column3]
			FROM
				[tempdb]..[#tbl9999] [i]
					INNER JOIN [tempdb]..[#tbl3333] [it] ON [i].[Column2] = [it].[Column1]
					INNER JOIN [tempdb]..[#tbl0202] [ii] ON [i].[Column1] = [ii].[Column1] AND 1 = [ii].[Column2]
					INNER JOIN [tempdb]..[#tmp008] [pme] ON [ii].[Column3] = [pme].[ISIN]
			WHERE
				[i].[Column4] <= @date AND
				([i].[Column5] IS NULL OR [i].[Column5] > @date) AND
				[ii].[Column4] <= @date AND
				([ii].[Column5] IS NULL OR [ii].[Column5] > @date) AND
				[it].[Column3] IN ('E', 'B')
		) [i_1] ON [r].[Column4] = [i_1].[Column1]
		INNER JOIN [tempdb]..[#tbl6666] [ie] ON [i_1].[Column1] = [ie].[Column1] AND [ie].[Column7] = 1
		INNER JOIN [tempdb]..[#tmp007] [mp] ON [i_1].[Column3] = [mp].[Column3] AND [ie].[Column6] = [mp].[Prop3]
WHERE
	[ie].[Column4] <= @date AND
	([ie].[Column5] IS NULL OR [ie].[Column5] > @date) AND
	[r].[Column1] = @date AND
	[p].[Column1] = @date AND
	[r].[Column6] IS NULL
OPTION (RECOMPILE)

BeforeExecute
-- SqlServer.2019
DECLARE @date Date
SET     @date = DATETIME2FROMPARTS(2018, 11, 27, 0, 0, 0, 0, 7)

UPDATE
	[u]
SET
	[u].[Column6] = [r_1].[Column1],
	[u].[Column7] = IIF([r_1].[Column1] IS NOT NULL, [r_1].[Column4], NULL)
FROM
	[tempdb]..[#tbl7777] [u],
	(
		SELECT
			[r].[Column6],
			TRY_CAST(([r].[Column5] * [mp].[Column3]) AS DECIMAL(28, 6)) as [Column1],
			[mp].[Column4],
			[r].[Column1] as [Column1_1],
			[r].[Column2]
		FROM
			[tempdb]..[#tbl7777] [r]
				INNER JOIN [tempdb]..[#tbl8888] [mp] ON [r].[Column1] = [mp].[Column1] AND [r].[Column2] = [mp].[Column2]
		WHERE
			[r].[Column1] = @date
	) [r_1]
WHERE
	[r_1].[Column6] IS NULL AND [u].[Column1] = [r_1].[Column1_1] AND
	[u].[Column2] = [r_1].[Column2]

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#tbl8888]

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#tmp008]

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#tmp007]

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#tmp006]

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#tmp005]

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#tbl1515]

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#tbl1313]

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#tbl1212]

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#tbl1010]

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#tbl9999]

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#tbl7777]

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#tbl6666]

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#tbl5555]

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#tbl4444]

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#tbl3333]

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#tbl0202]

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#tbl0101]

