﻿BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [SampleClass]

BeforeExecute
-- SqlServer.2022

IF (OBJECT_ID(N'[SampleClass]', N'U') IS NULL)
	CREATE TABLE [SampleClass]
	(
		[Id]    Int NOT NULL,
		[Value] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2022

INSERT INTO [SampleClass]
(
	[Id],
	[Value]
)
VALUES
(1,100)

BeforeExecute
-- SqlServer.2022

SELECT
	[t].[Id],
	[t].[Value],
	[s].[Key_1],
	[s].[SecondValue]
FROM
	[SampleClass] [t]
		INNER JOIN (
			SELECT
				1 as [Key_1],
				3 as [SecondValue]
		) [s] ON [s].[Key_1] = [t].[Id]

BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [SampleClass]

