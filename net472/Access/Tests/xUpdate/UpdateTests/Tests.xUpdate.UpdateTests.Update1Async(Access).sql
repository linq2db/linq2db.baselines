BeforeExecute
-- Access AccessOleDb (asynchronously)

DELETE FROM
	[Parent] [t1]
WHERE
	[t1].[ParentID] > 1000

BeforeExecute
-- Access AccessOleDb (asynchronously)
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1001
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 1001

INSERT INTO [Parent]
(
	[ParentID],
	[Value1]
)
VALUES
(
	@ParentID,
	@Value1
)

BeforeExecute
-- Access AccessOleDb (asynchronously)
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1001

SELECT
	Count(*)
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = @ParentID

BeforeExecute
-- Access AccessOleDb (asynchronously)
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1001

UPDATE
	[Parent] [t1]
SET
	[t1].[ParentID] = [t1].[ParentID] + 1
WHERE
	[t1].[ParentID] = @ParentID

BeforeExecute
-- Access AccessOleDb (asynchronously)
DECLARE @p1 Integer -- Int32
SET     @p1 = 1002

SELECT
	Count(*)
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = @p1

BeforeExecute
-- Access AccessOleDb (asynchronously)

DELETE FROM
	[Child] [t1]
WHERE
	[t1].[ChildID] > 1000

