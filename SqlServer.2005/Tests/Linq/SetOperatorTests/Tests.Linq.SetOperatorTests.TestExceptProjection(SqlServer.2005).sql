BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[SampleData]', N'U') IS NOT NULL)
	DROP TABLE [SampleData]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[SampleData]', N'U') IS NULL)
	CREATE TABLE [SampleData]
	(
		[Id]     Int NOT NULL,
		[Value1] Int NOT NULL,
		[Value2] Int NOT NULL,
		[Value3] Int NOT NULL,

		CONSTRAINT [PK_SampleData] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2005

INSERT INTO [SampleData]
(
	[Id],
	[Value1],
	[Value2],
	[Value3]
)
SELECT 1,10,100,1000 UNION ALL
SELECT 2,20,200,2000 UNION ALL
SELECT 3,30,300,3000 UNION ALL
SELECT 4,40,400,4000 UNION ALL
SELECT 5,50,500,5000 UNION ALL
SELECT 6,60,600,6000 UNION ALL
SELECT 7,70,700,7000 UNION ALL
SELECT 8,80,800,8000 UNION ALL
SELECT 9,90,900,9000 UNION ALL
SELECT 10,100,1000,10000

BeforeExecute
-- SqlServer.2005

SELECT
	[r_3].[Value_1]
FROM
	(
		SELECT
			[r].[Id],
			[r].[Value1] as [Value_1]
		FROM
			[SampleData] [r]
		WHERE
			[r].[Id] % 2 = 0
		EXCEPT
		SELECT
			[r_1].[Id],
			[r_1].[Value2] / 10 as [Value_1]
		FROM
			[SampleData] [r_1]
		WHERE
			[r_1].[Id] % 4 = 0
		EXCEPT
		SELECT
			[r_2].[Id],
			[r_2].[Value1] as [Value_1]
		FROM
			[SampleData] [r_2]
		WHERE
			[r_2].[Id] % 6 = 0
	) [r_3]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[SampleData]', N'U') IS NOT NULL)
	DROP TABLE [SampleData]

