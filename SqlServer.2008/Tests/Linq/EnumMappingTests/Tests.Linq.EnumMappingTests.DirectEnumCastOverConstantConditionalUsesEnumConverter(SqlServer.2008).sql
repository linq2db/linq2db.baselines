-- SqlServer.2008
DECLARE @gender VarChar(8000) -- AnsiString
SET     @gender = N'M'

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	@gender = CASE
		WHEN [p].[PersonID] > 2 THEN N'M'
		ELSE N'F'
	END
ORDER BY
	[p].[PersonID]

