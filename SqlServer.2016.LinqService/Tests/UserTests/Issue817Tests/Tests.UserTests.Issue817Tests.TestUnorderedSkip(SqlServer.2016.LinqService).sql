﻿BeforeExecute
-- SqlServer.2016

SELECT
	COUNT(*)
FROM
	[Person] [t1]

BeforeExecute
-- SqlServer.2016
DECLARE @skip Int -- Int32
SET     @skip = 1

SELECT
	1
FROM
	[Person] [t1]
ORDER BY
	1
OFFSET @skip ROWS

