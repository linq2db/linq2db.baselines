BeforeExecute
-- SqlCe
DECLARE @skip Int -- Int32
SET     @skip = 0
DECLARE @take Int -- Int32
SET     @take = 1

SELECT
	[_].[PersonID]
FROM
	[Person] [_]
ORDER BY
	[_].[PersonID]
OFFSET @skip ROWS FETCH NEXT @take ROWS ONLY 

