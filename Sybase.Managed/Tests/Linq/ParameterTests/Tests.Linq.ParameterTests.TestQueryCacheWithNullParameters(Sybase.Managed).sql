-- Sybase.Managed Sybase

SELECT
	COUNT(*)
FROM
	[Person] [t1]
WHERE
	1 = 0

-- Sybase.Managed Sybase
DECLARE @id Integer -- Int32
SET     @id = 1

SELECT
	COUNT(*)
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] = @id

