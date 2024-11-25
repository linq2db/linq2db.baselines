﻿BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	COUNT(*)
FROM
	[Child] [t1]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

WITH [CTE1_] ([unused])
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
-- SqlServer.2017.MS SqlServer.2017

WITH [CTE1_] ([unused])
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
-- SqlServer.2017.MS SqlServer.2017

WITH [CTE1_] ([unused])
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
			1
		FROM
			[CTE1_] [t1]
	), 1, 0)

