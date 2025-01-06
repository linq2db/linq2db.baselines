BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [TestBool]

BeforeExecute
-- SqlServer.SA SqlServer.2019

IF (OBJECT_ID(N'[TestBool]', N'U') IS NULL)
	CREATE TABLE [TestBool]
	(
		[Id]    Int NOT NULL,
		[Value] Bit     NULL
	)

BeforeExecute
-- SqlServer.SA SqlServer.2019

INSERT INTO [TestBool]
(
	[Id],
	[Value]
)
VALUES
(
	1,
	0
)

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT TOP (2)
	[t1].[Id],
	[t1].[Value]
FROM
	[TestBool] [t1]

BeforeExecute
-- SqlServer.SA SqlServer.2019

UPDATE
	[TestBool]
SET
	[Id] = 1,
	[Value] = CASE
		WHEN [TestBool].[Value] = 0 THEN 1
		WHEN [TestBool].[Value] = 1 THEN 0
		ELSE NULL
	END

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT TOP (2)
	[t1].[Id],
	[t1].[Value]
FROM
	[TestBool] [t1]

BeforeExecute
-- SqlServer.SA SqlServer.2019

UPDATE
	[TestBool]
SET
	[Id] = 1,
	[Value] = 0

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT TOP (2)
	[t1].[Id],
	[t1].[Value]
FROM
	[TestBool] [t1]

BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [TestBool]

