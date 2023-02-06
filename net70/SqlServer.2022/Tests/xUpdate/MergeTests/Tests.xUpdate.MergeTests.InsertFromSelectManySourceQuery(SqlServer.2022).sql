﻿BeforeExecute
BeginTransaction
BeforeExecute
-- SqlServer.2022

DELETE [t1]
FROM
	[Parent] [t1]

BeforeExecute
-- SqlServer.2022

DELETE [t1]
FROM
	[Child] [t1]

BeforeExecute
-- SqlServer.2022

DELETE [t1]
FROM
	[GrandChild] [t1]

BeforeExecute
-- SqlServer.2022
DECLARE @Id Int -- Int32
SET     @Id = 1

INSERT INTO [Parent]
(
	[ParentID]
)
VALUES
(
	@Id
)

BeforeExecute
-- SqlServer.2022
DECLARE @Id Int -- Int32
SET     @Id = 2

INSERT INTO [Parent]
(
	[ParentID]
)
VALUES
(
	@Id
)

BeforeExecute
-- SqlServer.2022
DECLARE @Id Int -- Int32
SET     @Id = 10

INSERT INTO [Child]
(
	[ChildID]
)
VALUES
(
	@Id
)

BeforeExecute
-- SqlServer.2022
DECLARE @Id Int -- Int32
SET     @Id = 20

INSERT INTO [Child]
(
	[ChildID]
)
VALUES
(
	@Id
)

BeforeExecute
-- SqlServer.2022
DECLARE @Id Int -- Int32
SET     @Id = 11
DECLARE @LeftId Int -- Int32
SET     @LeftId = 100
DECLARE @RightId Int -- Int32
SET     @RightId = 200

INSERT INTO [GrandChild]
(
	[GrandChildID],
	[ParentID],
	[ChildID]
)
VALUES
(
	@Id,
	@LeftId,
	@RightId
)

BeforeExecute
-- SqlServer.2022

MERGE INTO [GrandChild] [Target]
USING
(
	SELECT
		[r].[ParentID] + [t2].[ChildID] as [source_field0],
		[r].[ParentID] as [LeftId],
		[t2].[ChildID] as [RightId]
	FROM
		[Parent] [r],
		[Child] [t2]
) [Source]
(
	[source_field0],
	[LeftId],
	[RightId]
)
ON ([Target].[GrandChildID] = [Source].[source_field0])

WHEN NOT MATCHED THEN
INSERT
(
	[GrandChildID],
	[ParentID],
	[ChildID]
)
VALUES
(
	[Source].[source_field0],
	[Source].[LeftId],
	[Source].[RightId]
)
;

BeforeExecute
-- SqlServer.2022

SELECT
	[t1].[GrandChildID],
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[GrandChild] [t1]
ORDER BY
	[t1].[GrandChildID]

BeforeExecute
DisposeTransaction
