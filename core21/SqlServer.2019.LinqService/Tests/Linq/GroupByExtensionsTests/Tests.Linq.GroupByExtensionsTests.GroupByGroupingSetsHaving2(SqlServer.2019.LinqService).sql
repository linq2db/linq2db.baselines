BeforeExecute
-- SqlServer.2019 SqlServer.2017

CREATE TABLE [GroupSampleClass]
(
	[Id1]   Int NOT NULL,
	[Id2]   Int NOT NULL,
	[Value] Int NOT NULL
)

BeforeExecute
-- SqlServer.2019 SqlServer.2017

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
-- SqlServer.2019 SqlServer.2017

SELECT
	[g_1].[Id1],
	Count(*)
FROM
	(
		SELECT DISTINCT
			[selectParam].[Id1],
			[selectParam].[Id2],
			[selectParam].[Value] as [Value_1]
		FROM
			[GroupSampleClass] [selectParam]
	) [g_1]
GROUP BY GROUPING SETS (
	([g_1].[Id1], [g_1].[Id2]),
	([g_1].[Id2]),
	()
)
HAVING
	Count(*) > 0

BeforeExecute
-- SqlServer.2019 SqlServer.2017

DROP TABLE [GroupSampleClass]

