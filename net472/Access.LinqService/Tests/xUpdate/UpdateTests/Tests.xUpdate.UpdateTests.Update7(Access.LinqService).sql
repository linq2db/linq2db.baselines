BeforeExecute
-- Access AccessOleDb

DELETE FROM
	[Parent] [t1]
WHERE
	[t1].[ParentID] > 1000

BeforeExecute
-- Access AccessOleDb
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 1
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1001

INSERT INTO [Parent]
(
	[Value1],
	[ParentID]
)
VALUES
(
	@Value1,
	@ParentID
)

BeforeExecute
-- Access AccessOleDb
DECLARE @id Integer -- Int32
SET     @id = 1001

SELECT 
	Count(*)
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = @id AND [p].[Value1] = 1

BeforeExecute
-- Access AccessOleDb
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 2
DECLARE @id Integer -- Int32
SET     @id = 1001

UPDATE
	[Parent] [p]
SET
	[p].[Value1] = @Value1
WHERE
	[p].[ParentID] = @id

BeforeExecute
-- Access AccessOleDb
DECLARE @id Integer -- Int32
SET     @id = 1001

SELECT 
	Count(*)
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = @id AND [p].[Value1] = 2

BeforeExecute
-- Access AccessOleDb
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 3
DECLARE @id Integer -- Int32
SET     @id = 1001

UPDATE
	[Parent] [p]
SET
	[p].[Value1] = @Value1
WHERE
	[p].[ParentID] = @id

BeforeExecute
-- Access AccessOleDb
DECLARE @id Integer -- Int32
SET     @id = 1001

SELECT 
	Count(*)
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = @id AND [p].[Value1] = 3

BeforeExecute
-- Access AccessOleDb

DELETE FROM
	[Parent] [t1]
WHERE
	[t1].[ParentID] > 1000

