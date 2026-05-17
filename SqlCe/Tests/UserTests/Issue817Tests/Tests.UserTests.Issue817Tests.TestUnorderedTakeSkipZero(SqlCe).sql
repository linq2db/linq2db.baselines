-- SqlCe
DECLARE @skip Int -- Int32
SET     @skip = 0
DECLARE @take Int -- Int32
SET     @take = 1

SELECT
	1 as [c1]
FROM
	[Person] [t1]
ORDER BY
	[t1].[FirstName]
OFFSET @skip ROWS FETCH NEXT @take ROWS ONLY 

