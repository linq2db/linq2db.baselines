﻿BeforeExecute
-- SqlServer.2016 SqlServer.2012
DECLARE @someValue Int -- Int32
SET     @someValue = 3
DECLARE @someValue_1 Int -- Int32
SET     @someValue_1 = 3
DECLARE @someValue_2 Int -- Int32
SET     @someValue_2 = 3
DECLARE @someValue_3 Int -- Int32
SET     @someValue_3 = 3

SELECT
	@someValue,
	[c_1].[ChildID]
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] <= @someValue_1
UNION ALL
SELECT
	@someValue_2,
	[c_2].[ChildID]
FROM
	[Child] [c_2]
WHERE
	[c_2].[ChildID] > @someValue_3

