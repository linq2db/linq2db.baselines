BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [TestIssue358Class]

BeforeExecute
-- SqlServer.2016

IF (OBJECT_ID(N'[TestIssue358Class]', N'U') IS NULL)
	CREATE TABLE [TestIssue358Class]
	(
		[MyEnum]  Int     NULL,
		[MyEnum2] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2016

SELECT
	[p].[MyEnum],
	[p].[MyEnum2]
FROM
	[TestIssue358Class] [p]
WHERE
	[p].[MyEnum] <> 0 OR [p].[MyEnum] IS NULL

BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [TestIssue358Class]

