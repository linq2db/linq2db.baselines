BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [Tdm100]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

IF (OBJECT_ID(N'[Tdm100]', N'U') IS NULL)
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
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [Trp004]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

IF (OBJECT_ID(N'[Trp004]', N'U') IS NULL)
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
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [Trp003]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

IF (OBJECT_ID(N'[Trp003]', N'U') IS NULL)
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
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [Trp0041]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

IF (OBJECT_ID(N'[Trp0041]', N'U') IS NULL)
	CREATE TABLE [Trp0041]
	(
		[Id]       Int          NOT NULL,
		[CarNo]    NVarChar(10)     NULL,
		[FirstVal] NVarChar(10)     NULL
	)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
DECLARE @carNo NVarChar(10) -- String
SET     @carNo = N'%1%'
DECLARE @carBrand NVarChar(10) -- String
SET     @carBrand = N'%test%'
DECLARE @skip Int -- Int32
SET     @skip = 20
DECLARE @take Int -- Int32
SET     @take = 10

SELECT
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
			[Tdm100] [t]
				LEFT JOIN [Trp004] [t2] ON [t2].[CarNo] = [t].[CarNo] OR [t2].[CarNo] IS NULL AND [t].[CarNo] IS NULL
				LEFT JOIN [Trp003] [t3] ON [t3].[RuleNo] = [t2].[RuleNo] OR [t3].[RuleNo] IS NULL AND [t2].[RuleNo] IS NULL
				LEFT JOIN [Trp0041] [t4] ON [t4].[CarNo] = [t].[CarNo] OR [t4].[CarNo] IS NULL AND [t].[CarNo] IS NULL
	) [t_1]
WHERE
	[t_1].[RuleNo] IS NOT NULL AND [t_1].[CarNo] LIKE @carNo ESCAPE N'~' AND
	[t_1].[CarBrand] LIKE @carBrand ESCAPE N'~'
ORDER BY
	1
OFFSET @skip ROWS FETCH NEXT @take ROWS ONLY 

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
DECLARE @carNo NVarChar(10) -- String
SET     @carNo = N'%1%'
DECLARE @carBrand NVarChar(10) -- String
SET     @carBrand = N'%test%'

SELECT
	COUNT(*)
FROM
	(
		SELECT
			[t2].[RuleNo],
			[t].[CarNo],
			[t].[CarBrand]
		FROM
			[Tdm100] [t]
				LEFT JOIN [Trp004] [t2] ON [t2].[CarNo] = [t].[CarNo] OR [t2].[CarNo] IS NULL AND [t].[CarNo] IS NULL
				LEFT JOIN [Trp003] [t3] ON [t3].[RuleNo] = [t2].[RuleNo] OR [t3].[RuleNo] IS NULL AND [t2].[RuleNo] IS NULL
				LEFT JOIN [Trp0041] [t4] ON [t4].[CarNo] = [t].[CarNo] OR [t4].[CarNo] IS NULL AND [t].[CarNo] IS NULL
	) [t1]
WHERE
	[t1].[RuleNo] IS NOT NULL AND [t1].[CarNo] LIKE @carNo ESCAPE N'~' AND
	[t1].[CarBrand] LIKE @carBrand ESCAPE N'~'

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [Trp0041]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [Trp003]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [Trp004]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [Tdm100]

