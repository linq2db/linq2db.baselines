-- SqlServer.2017.MS SqlServer.2017

SELECT
	[p].[MyEnum],
	[p].[MyEnum2]
FROM
	[TestIssue358Class] [p]
WHERE
	[p].[MyEnum2] NOT IN (1)

