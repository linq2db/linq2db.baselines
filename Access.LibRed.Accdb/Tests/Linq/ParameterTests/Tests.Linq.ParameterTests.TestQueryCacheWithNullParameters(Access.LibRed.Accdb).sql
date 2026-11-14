-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	COUNT(*)
FROM
	[Person] [t1]
WHERE
	1 = 0

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @id  -- Int32
SET     @id = 1

SELECT
	COUNT(*)
FROM
	[Person] [t1]
WHERE
	[t1].[PersonID] = @id

