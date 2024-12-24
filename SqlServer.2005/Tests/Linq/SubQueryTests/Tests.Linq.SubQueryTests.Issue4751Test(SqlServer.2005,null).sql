BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Tdm100]', N'U') IS NOT NULL)
	DROP TABLE [Tdm100]

BeforeExecute
-- SqlServer.2005

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
-- SqlServer.2005

IF (OBJECT_ID(N'[Trp004]', N'U') IS NOT NULL)
	DROP TABLE [Trp004]

BeforeExecute
-- SqlServer.2005

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
-- SqlServer.2005

IF (OBJECT_ID(N'[Trp003]', N'U') IS NOT NULL)
	DROP TABLE [Trp003]

BeforeExecute
-- SqlServer.2005

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
-- SqlServer.2005

IF (OBJECT_ID(N'[Trp0041]', N'U') IS NOT NULL)
	DROP TABLE [Trp0041]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Trp0041]', N'U') IS NULL)
	CREATE TABLE [Trp0041]
	(
		[Id]       Int          NOT NULL,
		[CarNo]    NVarChar(10)     NULL,
		[FirstVal] NVarChar(10)     NULL
	)

BeforeExecute
-- SqlServer.2005
DECLARE @carNo NVarChar(10) -- String
SET     @carNo = N'%1%'
DECLARE @carBrand NVarChar(10) -- String
SET     @carBrand = N'%test%'
DECLARE @skip Int -- Int32
SET     @skip = 20
DECLARE @take Int -- Int32
SET     @take = 10

SELECT
	[t1].[Id],
	[t1].[CarNo],
	[t1].[CarSelf],
	[t1].[CarBrand],
	[t1].[RateWgt],
	[t1].[MastLeve],
	[t1].[ForkPole],
	[t1].[FirstVal],
	[t1].[TelNo],
	[t1].[RuleNo],
	[t1].[RuleName],
	[t1].[RuleType],
	[t1].[RuleVal],
	[t1].[RuleUnit],
	[t1].[RecCreator],
	[t1].[RecCreateTime],
	[t1].[RecRevisor],
	[t1].[RecReviseTime]
FROM
	(
		SELECT
			[x].[Id],
			[x].[CarNo],
			[x].[CarSelf],
			[x].[CarBrand],
			[x].[RateWgt],
			[x].[MastLeve],
			[x].[ForkPole],
			[x].[FirstVal],
			[x].[TelNo],
			[x].[RuleNo],
			[x].[RuleName],
			[x].[RuleType],
			[x].[RuleVal],
			[x].[RuleUnit],
			[x].[RecCreator],
			[x].[RecCreateTime],
			[x].[RecRevisor],
			[x].[RecReviseTime],
			ROW_NUMBER() OVER (ORDER BY (SELECT NULL)) as [RN]
		FROM
			(
				SELECT
					[t].[CarNo],
					[t].[CarBrand],
					[t].[Id],
					[t].[CarSelf],
					[t].[RateWgt],
					[t].[MastLeve],
					[t].[ForkPole],
					[t4].[FirstVal],
					[t2].[TelNo],
					[t2].[RuleNo],
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
			) [x]
		WHERE
			[x].[CarNo] LIKE @carNo ESCAPE N'~' AND [x].[CarBrand] LIKE @carBrand ESCAPE N'~'
	) [t1]
WHERE
	[t1].[RN] > @skip AND [t1].[RN] <= (@skip + @take)

BeforeExecute
-- SqlServer.2005
DECLARE @carNo NVarChar(10) -- String
SET     @carNo = N'%1%'
DECLARE @carBrand NVarChar(10) -- String
SET     @carBrand = N'%test%'

SELECT
	COUNT(*)
FROM
	(
		SELECT
			[t].[CarNo],
			[t].[CarBrand]
		FROM
			[Tdm100] [t]
				LEFT JOIN [Trp004] [t2] ON [t2].[CarNo] = [t].[CarNo] OR [t2].[CarNo] IS NULL AND [t].[CarNo] IS NULL
				LEFT JOIN [Trp003] [t3] ON [t3].[RuleNo] = [t2].[RuleNo] OR [t3].[RuleNo] IS NULL AND [t2].[RuleNo] IS NULL
				LEFT JOIN [Trp0041] [t4] ON [t4].[CarNo] = [t].[CarNo] OR [t4].[CarNo] IS NULL AND [t].[CarNo] IS NULL
	) [t1]
WHERE
	[t1].[CarNo] LIKE @carNo ESCAPE N'~' AND [t1].[CarBrand] LIKE @carBrand ESCAPE N'~'

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Trp0041]', N'U') IS NOT NULL)
	DROP TABLE [Trp0041]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Trp003]', N'U') IS NOT NULL)
	DROP TABLE [Trp003]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Trp004]', N'U') IS NOT NULL)
	DROP TABLE [Trp004]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Tdm100]', N'U') IS NOT NULL)
	DROP TABLE [Tdm100]

