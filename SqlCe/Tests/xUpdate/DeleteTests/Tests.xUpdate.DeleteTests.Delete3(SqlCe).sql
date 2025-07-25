﻿BeforeExecute
-- SqlCe

DELETE FROM
	[Child]
WHERE
	[Child].[ChildID] IN (1001, 1002)

BeforeExecute
-- SqlCe

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
VALUES
(
	1,
	1001
)

BeforeExecute
-- SqlCe

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
VALUES
(
	1,
	1002
)

BeforeExecute
-- SqlCe

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] = 1

BeforeExecute
-- SqlCe

DELETE FROM
	[Child]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Child] [c_1]
				INNER JOIN [Parent] [a_Parent] ON [c_1].[ParentID] = [a_Parent].[ParentID]
		WHERE
			[a_Parent].[ParentID] = 1 AND
			[c_1].[ChildID] IN (1001, 1002) AND
			[Child].[ParentID] = [c_1].[ParentID] AND
			[Child].[ChildID] = [c_1].[ChildID]
	)

BeforeExecute
-- SqlCe

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] = 1

