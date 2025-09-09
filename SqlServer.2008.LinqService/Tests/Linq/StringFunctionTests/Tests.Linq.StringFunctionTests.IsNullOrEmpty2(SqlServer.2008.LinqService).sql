BeforeExecute
-- SqlServer.2008 (asynchronously)

SELECT
	CASE
		WHEN LEN([p].[FirstName] + N'.') = 1 THEN 1
		ELSE 0
	END
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = 1

