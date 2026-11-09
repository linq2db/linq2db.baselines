-- SqlServer.2022
DECLARE @gender VarChar(8000) -- AnsiString
SET     @gender = N'M'

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	@gender = IIF([p].[PersonID] > 2, N'M', N'F')
ORDER BY
	[p].[PersonID]

