BeforeExecute
-- Sybase.Managed Sybase
DECLARE @ID Integer -- Int32
SET     @ID = 2

SELECT
	([p2].[PersonID] * 2) / @ID,
	[p2].[FirstName]
FROM
	[Person] [p2]

