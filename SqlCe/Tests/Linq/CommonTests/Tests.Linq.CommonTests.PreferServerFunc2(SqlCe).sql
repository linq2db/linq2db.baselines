BeforeExecute
-- SqlCe
DECLARE @Length Int -- Int32
SET     @Length = 0

SELECT
	LEN([p].[FirstName] + '.') - 1 + @Length as [c1]
FROM
	[Person] [p]

