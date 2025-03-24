BeforeExecute
--  SqlCe
DECLARE @Length Int -- Int32
SET     @Length = 0

SELECT
	Len([p].[FirstName]) + @Length as [c1]
FROM
	[Person] [p]

