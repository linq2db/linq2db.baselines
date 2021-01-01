BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[ExprPerson]', N'U') IS NOT NULL)
	DROP TABLE [ExprPerson]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[ExprPerson]', N'U') IS NULL)
	CREATE TABLE [ExprPerson]
	(
		[Id]   Int            NOT NULL,
		[Name] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2005

INSERT INTO [ExprPerson]
(
	[Id],
	[Name]
)
SELECT 0,N'Person0' UNION ALL
SELECT 1,N'Person1' UNION ALL
SELECT 2,N'Person2' UNION ALL
SELECT 3,N'Person3' UNION ALL
SELECT 4,N'Person4' UNION ALL
SELECT 5,N'Person5' UNION ALL
SELECT 6,N'Person6' UNION ALL
SELECT 7,N'Person7' UNION ALL
SELECT 8,N'Person8' UNION ALL
SELECT 9,N'Person9' UNION ALL
SELECT 10,N'Person10' UNION ALL
SELECT 11,N'Person11' UNION ALL
SELECT 12,N'Person12' UNION ALL
SELECT 13,N'Person13' UNION ALL
SELECT 14,N'Person14' UNION ALL
SELECT 15,N'Person15' UNION ALL
SELECT 16,N'Person16' UNION ALL
SELECT 17,N'Person17' UNION ALL
SELECT 18,N'Person18' UNION ALL
SELECT 19,N'Person19'

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[ExprPerson]', N'U') IS NOT NULL)
	DROP TABLE [ExprPerson]

