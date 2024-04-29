BeforeExecute
-- Sybase.Managed Sybase
DECLARE @p Integer -- Int32
SET     @p = 0

SELECT
	Len([p].[FirstName]) + @p
FROM
	[Person] [p]

