-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	COUNT(*)
FROM
	[Person] [t1]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @skip  -- Int32
SET     @skip = 1

SELECT
	1
FROM
	[Person] [t1]
OFFSET @skip ROWS

