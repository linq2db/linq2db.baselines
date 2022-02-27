BeforeExecute
-- SqlServer.2014 SqlServer.2012

DELETE [t1]
FROM
	[Parent] [t1]

BeforeExecute
-- SqlServer.2014 SqlServer.2012

DELETE [t1]
FROM
	[Child] [t1]

BeforeExecute
-- SqlServer.2014 SqlServer.2012

DELETE [t1]
FROM
	[GrandChild] [t1]

BeforeExecute
-- SqlServer.2014 SqlServer.2012
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
-- SqlServer.2014 SqlServer.2012
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
-- SqlServer.2014 SqlServer.2012
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
-- SqlServer.2014 SqlServer.2012
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
-- SqlServer.2014 SqlServer.2012
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
-- SqlServer.2014 SqlServer.2012

MERGE INTO [GrandChild] [Target]
USING (
	SELECT
		[t2].[ChildID] as [Id]
	FROM
		[Parent] [t1],
		[Child] [t2]
) [Source]
(
	[Id]
)
ON ([Target].[GrandChildID] = [Source].[Id])

WHEN NOT MATCHED THEN
INSERT
(
	[ChildID]
)
VALUES
(
	[Source].[Id]
)
;

BeforeExecute
-- SqlServer.2014 SqlServer.2012

SELECT
	[t1].[GrandChildID],
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[GrandChild] [t1]

