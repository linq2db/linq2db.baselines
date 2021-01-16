BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[SampleClass]', N'U') IS NOT NULL)
	DROP TABLE [SampleClass]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[SampleClass]', N'U') IS NULL)
	CREATE TABLE [SampleClass]
	(
		[Id]    Int            NOT NULL,
		[Value] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2005

INSERT INTO [SampleClass]
(
	[Id],
	[Value]
)
SELECT 1,N'6' UNION ALL
SELECT 2,N'x[0-9]x' UNION ALL
SELECT 3,N'x[0x' UNION ALL
SELECT 4,N'x[]x' UNION ALL
SELECT 5,N'x]' UNION ALL
SELECT 6,N']x'

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[SampleClass]', N'U') IS NOT NULL)
	DROP TABLE [SampleClass]

