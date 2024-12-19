BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [TestIssue358Class]

BeforeExecute
-- SqlServer.SA SqlServer.2019

IF (OBJECT_ID(N'[TestIssue358Class]', N'U') IS NULL)
	CREATE TABLE [TestIssue358Class]
	(
		[MyEnum]  Int     NULL,
		[MyEnum2] Int NOT NULL
	)

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[p].[MyEnum],
	[p].[MyEnum2]
FROM
	[TestIssue358Class] [p]
WHERE
	[p].[MyEnum2] NOT IN (1)

BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [TestIssue358Class]

