BeforeExecute
--  SqlServer.2016.MS SqlServer.2016
DECLARE @Length Int -- Int32
SET     @Length = 0

SELECT
	Len([p].[FirstName]) + @Length
FROM
	[Person] [p]

