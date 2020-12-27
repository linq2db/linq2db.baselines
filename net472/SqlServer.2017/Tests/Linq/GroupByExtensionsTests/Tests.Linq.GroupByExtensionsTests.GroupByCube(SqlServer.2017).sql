BeforeExecute
-- SqlServer.2017

IF (OBJECT_ID(N'[GroupSampleClass]', N'U') IS NOT NULL)
	DROP TABLE [GroupSampleClass]

BeforeExecute
-- SqlServer.2017

IF (OBJECT_ID(N'[GroupSampleClass]', N'U') IS NULL)
	CREATE TABLE [GroupSampleClass]
	(
		[Id1]   Int NOT NULL,
		[Id2]   Int NOT NULL,
		[Value] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2017

INSERT INTO [GroupSampleClass]
(
	[Id1],
	[Id2],
	[Value]
)
VALUES
(1,1,1),
(2,2,0),
(3,0,1),
(4,1,0),
(5,2,1),
(6,0,0),
(7,1,1),
(8,2,0),
(9,0,1),
(10,1,0)

BeforeExecute
-- SqlServer.2017

SELECT
	GROUPING([t1].[Key_1]),
	[t1].[Key_1],
	Count(*)
FROM
	(
		SELECT DISTINCT
			[selectParam].[Id1] as [Key_1],
			[selectParam].[Id2] as [Key_2],
			[selectParam].[Value] as [Value_1]
		FROM
			[GroupSampleClass] [selectParam]
	) [t1]
GROUP BY CUBE (
	[t1].[Key_1],
	[t1].[Key_2]
)

BeforeExecute
-- SqlServer.2017

IF (OBJECT_ID(N'[GroupSampleClass]', N'U') IS NOT NULL)
	DROP TABLE [GroupSampleClass]

