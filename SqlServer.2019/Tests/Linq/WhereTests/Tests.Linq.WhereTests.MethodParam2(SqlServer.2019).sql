-- SqlServer.2019
DECLARE @t Int -- Int32
SET     @t = 1

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = @t

-- SqlServer.2019
DECLARE @t Int -- Int32
SET     @t = 2

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = @t

