BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	[p].[Id],
	[p].[MyEnum],
	[p].[MyEnum2]
FROM
	[TestIssue358Class] [p]
WHERE
	[p].[MyEnum] IN (1)

