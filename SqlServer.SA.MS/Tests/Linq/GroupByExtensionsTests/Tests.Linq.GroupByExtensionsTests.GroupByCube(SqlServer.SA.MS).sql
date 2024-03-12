﻿BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [GroupSampleClass]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

IF (OBJECT_ID(N'[GroupSampleClass]', N'U') IS NULL)
	CREATE TABLE [GroupSampleClass]
	(
		[Id1]   Int NOT NULL,
		[Id2]   Int NOT NULL,
		[Value] Int NOT NULL
	)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

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
-- SqlServer.SA.MS SqlServer.2019

SELECT
	GROUPING([g_2].[Id1]),
	[g_2].[Id1],
	Count(*)
FROM
	(
		SELECT DISTINCT
			[g_1].[Id1],
			[g_1].[Id2],
			[g_1].[Value] as [Value_1]
		FROM
			[GroupSampleClass] [g_1]
	) [g_2]
GROUP BY CUBE (
	[g_2].[Id1],
	[g_2].[Id2]
)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [GroupSampleClass]

