BeforeExecute
-- SqlCe
DECLARE @p Int -- Int32
SET     @p = 0

SELECT
	Len([p].[FirstName]) + @p as [c1]
FROM
	[Person] [p]

