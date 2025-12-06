-- SqlServer.Contained.MS SqlServer.2019

DELETE [t1]
FROM
	[Parent] [t1]

-- SqlServer.Contained.MS SqlServer.2019

DELETE [t1]
FROM
	[Child] [t1]

-- SqlServer.Contained.MS SqlServer.2019

DELETE [t1]
FROM
	[GrandChild] [t1]

-- SqlServer.Contained.MS SqlServer.2019
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

-- SqlServer.Contained.MS SqlServer.2019
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

-- SqlServer.Contained.MS SqlServer.2019
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

-- SqlServer.Contained.MS SqlServer.2019
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

-- SqlServer.Contained.MS SqlServer.2019
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

-- SqlServer.Contained.MS SqlServer.2019

MERGE INTO [GrandChild] [Target]
USING (
	SELECT
		[r].[ParentID] + [t2].[ChildID] as [ResultId],
		[r].[ParentID] as [LeftId],
		[t2].[ChildID] as [RightId]
	FROM
		[Parent] [r]
			CROSS JOIN [Child] [t2]
) [Source]
(
	[ResultId],
	[LeftId],
	[RightId]
)
ON ([Target].[GrandChildID] = [Source].[ResultId])

WHEN NOT MATCHED THEN
INSERT
(
	[GrandChildID],
	[ParentID],
	[ChildID]
)
VALUES
(
	[Source].[ResultId],
	[Source].[LeftId],
	[Source].[RightId]
)
;

-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[t1].[GrandChildID],
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[GrandChild] [t1]
ORDER BY
	[t1].[GrandChildID]

