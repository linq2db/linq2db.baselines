-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @p  -- Int32
SET     @p = 1

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = @p

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @p  -- Int32
SET     @p = 2

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] = @p

