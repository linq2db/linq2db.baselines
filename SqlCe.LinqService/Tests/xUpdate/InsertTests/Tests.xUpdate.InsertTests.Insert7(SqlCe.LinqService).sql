﻿BeforeExecute
-- SqlCe

DELETE FROM
	[Child]
WHERE
	[Child].[ChildID] > 1000

BeforeExecute
-- SqlCe

INSERT INTO [Child]
(
	[ChildID],
	[ParentID]
)
VALUES
(
	1001,
	1
)

BeforeExecute
-- SqlCe
DECLARE @id Int -- Int32
SET     @id = 1001

SELECT
	Count(*) as [Count_1]
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] = @id

BeforeExecute
-- SqlCe

DELETE FROM
	[Child]
WHERE
	[Child].[ChildID] > 1000

