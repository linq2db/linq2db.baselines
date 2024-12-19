BeforeExecute
-- SqlCe

DROP TABLE [TestIssue358Class]

BeforeExecute
-- SqlCe

CREATE TABLE [TestIssue358Class]
(
	[MyEnum]  Int     NULL,
	[MyEnum2] Int NOT NULL
)

BeforeExecute
-- SqlCe

SELECT
	[p].[MyEnum],
	[p].[MyEnum2]
FROM
	[TestIssue358Class] [p]
WHERE
	[p].[MyEnum2] <> 0

BeforeExecute
-- SqlCe

DROP TABLE [TestIssue358Class]

