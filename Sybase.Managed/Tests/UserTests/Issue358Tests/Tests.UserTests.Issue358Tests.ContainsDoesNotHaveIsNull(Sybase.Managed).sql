BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'TestIssue358Class') IS NOT NULL)
	DROP TABLE [TestIssue358Class]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'TestIssue358Class') IS NULL)
	EXECUTE('
		CREATE TABLE [TestIssue358Class]
		(
			[MyEnum]  Int     NULL,
			[MyEnum2] Int NOT NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[p].[MyEnum],
	[p].[MyEnum2]
FROM
	[TestIssue358Class] [p]
WHERE
	[p].[MyEnum] IN (1)

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'TestIssue358Class') IS NOT NULL)
	DROP TABLE [TestIssue358Class]

