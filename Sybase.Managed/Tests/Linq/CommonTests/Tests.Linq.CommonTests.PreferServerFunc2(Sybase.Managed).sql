BeforeExecute
--  Sybase.Managed Sybase
DECLARE @Length Integer -- Int32
SET     @Length = 0

SELECT
	Len([p].[FirstName]) + @Length
FROM
	[Person] [p]

