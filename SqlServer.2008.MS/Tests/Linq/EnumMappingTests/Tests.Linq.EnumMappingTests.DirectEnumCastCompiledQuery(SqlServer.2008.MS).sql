-- SqlServer.2008.MS SqlServer.2008
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

-- SqlServer.2008.MS SqlServer.2008
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

