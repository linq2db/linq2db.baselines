﻿BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

WITH [CTE_1] AS
(
	SELECT DISTINCT
		[c_1].[ParentID],
		[c_1].[ChildID]
	FROM
		[Child] [c_1]
	WHERE
		[c_1].[ParentID] > 1
)
SELECT
	COUNT(*)
FROM
	[CTE_1] [c_2]

