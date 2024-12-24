BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [Tdm100]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

CREATE TABLE [Tdm100]
(
	[Id]          Int          NOT NULL,
	[CarSelf]     NVarChar(10)     NULL,
	[CarNo]       NVarChar(10)     NULL,
	[CarBrand]    NVarChar(10)     NULL,
	[RateWgt]     NVarChar(10)     NULL,
	[MastLeve]    NVarChar(10)     NULL,
	[ForkPole]    NVarChar(10)     NULL,
	[ForkPoleLen] NVarChar(10)     NULL
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [Trp004]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

CREATE TABLE [Trp004]
(
	[Id]              Int          NOT NULL,
	[CarNo]           NVarChar(10)     NULL,
	[RuleNo]          NVarChar(10)     NULL,
	[LastWorkVal]     NVarChar(10)     NULL,
	[LastDate]        NVarChar(10)     NULL,
	[RealLastWorkVal] NVarChar(10)     NULL,
	[RealLastDate]    NVarChar(10)     NULL,
	[Status]          NVarChar(10)     NULL,
	[TelNo]           NVarChar(10)     NULL,
	[RecCreator]      NVarChar(10)     NULL,
	[RecCreateTime]   NVarChar(10)     NULL,
	[RecRevisor]      NVarChar(10)     NULL,
	[RecReviseTime]   NVarChar(10)     NULL
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [Trp003]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

CREATE TABLE [Trp003]
(
	[Id]       Int          NOT NULL,
	[RuleNo]   NVarChar(10)     NULL,
	[RuleName] NVarChar(10)     NULL,
	[RuleType] NVarChar(10)     NULL,
	[RuleVal]  NVarChar(10)     NULL,
	[RuleUnit] NVarChar(10)     NULL,
	[Remark]   NVarChar(10)     NULL
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [Trp0041]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

CREATE TABLE [Trp0041]
(
	[Id]       Int          NOT NULL,
	[CarNo]    NVarChar(10)     NULL,
	[FirstVal] NVarChar(10)     NULL
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @carNo VarWChar(3) -- String
SET     @carNo = '%1%'
DECLARE @carBrand VarWChar(6) -- String
SET     @carBrand = '%test%'

SELECT TOP 30
	[t_1].[Id],
	[t_1].[CarNo],
	[t_1].[CarSelf],
	[t_1].[CarBrand],
	[t_1].[RateWgt],
	[t_1].[MastLeve],
	[t_1].[ForkPole],
	[t_1].[FirstVal],
	[t_1].[TelNo],
	[t_1].[RuleNo],
	[t_1].[RuleName],
	[t_1].[RuleType],
	[t_1].[RuleVal],
	[t_1].[RuleUnit],
	[t_1].[RecCreator],
	[t_1].[RecCreateTime],
	[t_1].[RecRevisor],
	[t_1].[RecReviseTime]
FROM
	(
		SELECT
			[t2].[RuleNo],
			[t].[CarNo],
			[t].[CarBrand],
			[t].[Id],
			[t].[CarSelf],
			[t].[RateWgt],
			[t].[MastLeve],
			[t].[ForkPole],
			[t4].[FirstVal],
			[t2].[TelNo],
			[t3].[RuleName],
			[t3].[RuleType],
			[t3].[RuleVal],
			[t3].[RuleUnit],
			[t2].[RecCreator],
			[t2].[RecCreateTime],
			[t2].[RecRevisor],
			[t2].[RecReviseTime]
		FROM
			(([Tdm100] [t]
				LEFT JOIN [Trp004] [t2] ON ([t2].[CarNo] = [t].[CarNo] OR [t2].[CarNo] IS NULL AND [t].[CarNo] IS NULL))
				LEFT JOIN [Trp003] [t3] ON ([t3].[RuleNo] = [t2].[RuleNo] OR [t3].[RuleNo] IS NULL AND [t2].[RuleNo] IS NULL))
				LEFT JOIN [Trp0041] [t4] ON ([t4].[CarNo] = [t].[CarNo] OR [t4].[CarNo] IS NULL AND [t].[CarNo] IS NULL)
	) [t_1]
WHERE
	[t_1].[RuleNo] IS NULL AND [t_1].[CarNo] LIKE @carNo AND
	[t_1].[CarBrand] LIKE @carBrand

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @carNo VarWChar(3) -- String
SET     @carNo = '%1%'
DECLARE @carBrand VarWChar(6) -- String
SET     @carBrand = '%test%'

SELECT
	COUNT(*)
FROM
	(
		SELECT
			[t2].[RuleNo],
			[t].[CarNo],
			[t].[CarBrand]
		FROM
			(([Tdm100] [t]
				LEFT JOIN [Trp004] [t2] ON ([t2].[CarNo] = [t].[CarNo] OR [t2].[CarNo] IS NULL AND [t].[CarNo] IS NULL))
				LEFT JOIN [Trp003] [t3] ON ([t3].[RuleNo] = [t2].[RuleNo] OR [t3].[RuleNo] IS NULL AND [t2].[RuleNo] IS NULL))
				LEFT JOIN [Trp0041] [t4] ON ([t4].[CarNo] = [t].[CarNo] OR [t4].[CarNo] IS NULL AND [t].[CarNo] IS NULL)
	) [t1]
WHERE
	[t1].[RuleNo] IS NULL AND [t1].[CarNo] LIKE @carNo AND
	[t1].[CarBrand] LIKE @carBrand

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [Trp0041]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [Trp003]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [Trp004]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [Tdm100]

