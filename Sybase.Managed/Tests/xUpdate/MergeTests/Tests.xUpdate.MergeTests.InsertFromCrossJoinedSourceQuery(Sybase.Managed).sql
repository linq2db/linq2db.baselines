BeforeExecute
BeginTransaction
BeforeExecute
--  Sybase.Managed Sybase

DELETE FROM [Parent]
FROM
	[Parent] [t1]

BeforeExecute
--  Sybase.Managed Sybase

DELETE FROM [Child]
FROM
	[Child] [t1]

BeforeExecute
--  Sybase.Managed Sybase

DELETE FROM [GrandChild]
FROM
	[GrandChild] [t1]

BeforeExecute
--  Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
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
--  Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
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
--  Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
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
--  Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
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
--  Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 11
DECLARE @LeftId Integer -- Int32
SET     @LeftId = 100
DECLARE @RightId Integer -- Int32
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
--  Sybase.Managed Sybase

MERGE INTO [GrandChild] [Target]
USING (
	SELECT
		[t1].[ParentID] + [t2].[ChildID] as [source_ResultId],
		[t1].[ParentID] as [source_LeftId],
		[t2].[ChildID] as [source_RightId]
	FROM
		[Parent] [t1],
		[Child] [t2]
) [Source]
(
	[source_ResultId],
	[source_LeftId],
	[source_RightId]
)
ON ([Target].[GrandChildID] = [Source].[source_ResultId])

WHEN NOT MATCHED THEN
INSERT
(
	[GrandChildID],
	[ParentID],
	[ChildID]
)
VALUES
(
	[Source].[source_ResultId],
	[Source].[source_LeftId],
	[Source].[source_RightId]
)

BeforeExecute
--  Sybase.Managed Sybase

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
