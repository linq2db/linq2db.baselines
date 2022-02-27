﻿BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

DROP TABLE IF EXISTS [SampleClass]

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

IF (OBJECT_ID(N'[SampleClass]', N'U') IS NULL)
	CREATE TABLE [SampleClass]
	(
		[Id]    Int NOT NULL,
		[Value] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

INSERT INTO [SampleClass]
(
	[Id],
	[Value]
)
VALUES
(1,100)

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

SELECT
	[t].[Id],
	[t].[Value],
	[s].[c1]
FROM
	[SampleClass] [t]
		INNER JOIN (
			SELECT
				1 as [c1]
		) [s] ON [s].[c1] = [t].[Id]

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

DROP TABLE IF EXISTS [SampleClass]

