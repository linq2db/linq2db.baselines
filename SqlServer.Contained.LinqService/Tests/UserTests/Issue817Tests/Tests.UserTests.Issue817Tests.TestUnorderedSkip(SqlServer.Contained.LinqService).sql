BeforeExecute
-- SqlServer.Contained SqlServer.2019 (asynchronously)

SELECT
	COUNT(*)
FROM
	[Person] [t1]

BeforeExecute
-- SqlServer.Contained SqlServer.2019 (asynchronously)
DECLARE @skip Int -- Int32
SET     @skip = 1

SELECT
	1
FROM
	[Person] [t1]
ORDER BY
	1
OFFSET @skip ROWS

