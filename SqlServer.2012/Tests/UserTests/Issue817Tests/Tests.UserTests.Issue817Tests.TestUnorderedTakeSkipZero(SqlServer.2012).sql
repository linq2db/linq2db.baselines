BeforeExecute
-- SqlServer.2012
DECLARE @skip Int -- Int32
SET     @skip = 0
DECLARE @take Int -- Int32
SET     @take = 1

SELECT
	1
FROM
	[Person] [t1]
ORDER BY
	1
OFFSET @skip ROWS FETCH NEXT @take ROWS ONLY 

