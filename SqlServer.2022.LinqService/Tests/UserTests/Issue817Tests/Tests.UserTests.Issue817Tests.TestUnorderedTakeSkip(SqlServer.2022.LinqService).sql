BeforeExecute
-- SqlServer.2022
DECLARE @take Int -- Int32
SET     @take = 1

SELECT
	1
FROM
	[Person] [_]
ORDER BY
	1
OFFSET @take ROWS FETCH NEXT @take ROWS ONLY 

