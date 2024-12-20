BeforeExecute
-- SqlCe

DROP TABLE [SampleData]

BeforeExecute
-- SqlCe

CREATE TABLE [SampleData]
(
	[Id]     Int NOT NULL,
	[Value1] Int NOT NULL,
	[Value2] Int NOT NULL,
	[Value3] Int NOT NULL,

	CONSTRAINT [PK_SampleData] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe

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
-- SqlCe

SELECT DISTINCT
	[t1].[Id],
	[t1].[Value1],
	[t1].[Value2],
	[t1].[Value3]
FROM
	(
		SELECT
			[t].[Id],
			[t].[Value1],
			[t].[Value2],
			[t].[Value3]
		FROM
			[SampleData] [t]
		WHERE
			[t].[Id] % 2 = 0
		UNION ALL
		SELECT
			[t_1].[Id],
			[t_1].[Value1],
			[t_1].[Value2],
			[t_1].[Value3]
		FROM
			[SampleData] [t_1]
		WHERE
			[t_1].[Id] % 2 = 0
	) [t1]
WHERE
	NOT EXISTS(
		SELECT
			*
		FROM
			[SampleData] [t_2]
		WHERE
			[t1].[Id] = [t_2].[Id] AND
			[t1].[Value1] = [t_2].[Value1] AND
			[t1].[Value2] = [t_2].[Value2] AND
			[t1].[Value3] = [t_2].[Value3] AND
			[t_2].[Id] % 4 = 0
	)

BeforeExecute
-- SqlCe

DROP TABLE [SampleData]

