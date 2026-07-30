-- Sybase.Managed Sybase
DECLARE @t Integer -- Int32
SET     @t = 1

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = @t

-- Sybase.Managed Sybase
DECLARE @t Integer -- Int32
SET     @t = 2

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = @t

