BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[GroupSampleClass]', N'U') IS NOT NULL)
	DROP TABLE [GroupSampleClass]

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[GroupSampleClass]', N'U') IS NULL)
	CREATE TABLE [GroupSampleClass]
	(
		[Id1]   Int NOT NULL,
		[Id2]   Int NOT NULL,
		[Value] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2008

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
-- SqlServer.2008

SELECT
	[gg].[Id1],
	COUNT(*)
FROM
	(
		SELECT DISTINCT
			[g_1].[Id1],
			[g_1].[Id2],
			[g_1].[Value] as [Value_1]
		FROM
			[GroupSampleClass] [g_1]
	) [gg]
GROUP BY GROUPING SETS (
	([gg].[Id1], [gg].[Id2]),
	([gg].[Id2]),
	()
)
HAVING
	COUNT(*) > 0

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[GroupSampleClass]', N'U') IS NOT NULL)
	DROP TABLE [GroupSampleClass]

