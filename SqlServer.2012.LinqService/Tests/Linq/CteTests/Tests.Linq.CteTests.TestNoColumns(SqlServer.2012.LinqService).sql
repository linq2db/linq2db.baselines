﻿BeforeExecute
-- SqlServer.2012

SELECT
	COUNT(*)
FROM
	[Child] [t1]

BeforeExecute
-- SqlServer.2012

WITH [CTE1_] ([c1])
AS
(
	SELECT
		1
	FROM
		[Child] [t1]
)
SELECT
	COUNT(*)
FROM
	[CTE1_] [t2]

BeforeExecute
-- SqlServer.2012

WITH [CTE1_] ([c1])
AS
(
	SELECT
		1
	FROM
		[Child] [c_1]
)
SELECT
	COUNT(*)
FROM
	[CTE1_] [t1]

BeforeExecute
-- SqlServer.2012

WITH [CTE1_] ([c1])
AS
(
	SELECT
		1
	FROM
		[Child] [c_1]
)
SELECT
	IIF(EXISTS(
		SELECT
			*
		FROM
			[CTE1_] [t1]
	), 1, 0)

