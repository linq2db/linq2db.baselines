-- SqlServer.2017.MS SqlServer.2017

SELECT
	COUNT(*)
FROM
	[Person] [t1]

-- SqlServer.2017.MS SqlServer.2017
DECLARE @skip Int -- Int32
SET     @skip = 1

SELECT
	1
FROM
	[Person] [t1]
ORDER BY
	1
OFFSET @skip ROWS

