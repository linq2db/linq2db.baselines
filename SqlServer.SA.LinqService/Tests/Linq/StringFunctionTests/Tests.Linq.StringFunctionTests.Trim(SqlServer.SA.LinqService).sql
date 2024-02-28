BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT
	[pp].[PersonID],
	N'  ' + [pp].[FirstName] + N' '
FROM
	[Person] [pp]
WHERE
	LTrim(RTrim(N'  ' + [pp].[FirstName] + N' ')) = N'John' AND
	[pp].[PersonID] = 1

