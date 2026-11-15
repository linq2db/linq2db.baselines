-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @level  -- Int32
SET     @level = 2

SELECT
	[p].[PersonID]
FROM
	[Person] [p]
WHERE
	IIF([p].[PersonID] > 2, 2, 1) = @level
ORDER BY
	[p].[PersonID]

