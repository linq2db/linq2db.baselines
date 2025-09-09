BeforeExecute
-- SqlServer.2005.MS SqlServer.2005 (asynchronously)

SELECT
	[pp].[PersonID],
	N'  ' + [pp].[FirstName] + N' '
FROM
	[Person] [pp]
WHERE
	[pp].[PersonID] = 1 AND LTrim(RTrim(N'  ' + [pp].[FirstName] + N' ')) = N'John'

