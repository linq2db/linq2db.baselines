BeforeExecute
--  SqlServer.2012
DECLARE @Length Int -- Int32
SET     @Length = 0

SELECT
	Len([p].[FirstName]) + @Length
FROM
	[Person] [p]

