BeforeExecute
-- Sybase.Managed Sybase
DECLARE @n Integer -- Int32
SET     @n = 1

SELECT
	([p].[PersonID] + @n) - 1,
	[p].[FirstName]
FROM
	[Person] [p]
WHERE
	[p].[PersonID] + @n = 2

