-- SqlServer.Contained SqlServer.2025
DECLARE @Gender Char(1) -- AnsiStringFixedLength
SET     @Gender = N'F'

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	[p].[Gender] = @Gender
ORDER BY
	[p].[PersonID]

-- SqlServer.Contained SqlServer.2025
DECLARE @Gender Char(1) -- AnsiStringFixedLength
SET     @Gender = N'M'

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	[p].[Gender] = @Gender
ORDER BY
	[p].[PersonID]

