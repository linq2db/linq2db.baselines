BeforeExecute
-- SqlServer.2019 SqlServer.2017

SELECT
	Count(*)
FROM
	[Person] [t1]

BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @skip Int -- Int32
SET     @skip = 1

SELECT
	1
FROM
	[Person] [_]
ORDER BY
	1
OFFSET @skip ROWS

