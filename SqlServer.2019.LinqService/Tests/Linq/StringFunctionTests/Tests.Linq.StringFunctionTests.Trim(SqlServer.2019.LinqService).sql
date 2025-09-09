BeforeExecute
-- SqlServer.2019 (asynchronously)

SELECT
	[pp].[PersonID],
	N'  ' + [pp].[FirstName] + N' '
FROM
	[Person] [pp]
WHERE
	[pp].[PersonID] = 1 AND LTrim(RTrim(N'  ' + [pp].[FirstName] + N' ')) = N'John'

