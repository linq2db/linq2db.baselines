BeforeExecute
-- Sybase.Managed Sybase
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1010
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 1010

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
-- Sybase.Managed Sybase

UPDATE
	[Parent]
SET
	[t1].[Value1] = 1012
FROM
	[Parent] [t1]
WHERE
	[t1].[ParentID] = 1010

BeforeExecute
-- Sybase.Managed Sybase

SELECT TOP 1 
	[t].[ParentID], 
	[t].[Value1]
FROM
	[Parent] [t]
WHERE
	[t].[ParentID] = 1010

BeforeExecute
-- Sybase.Managed Sybase

DELETE FROM [Parent]
FROM
	[Parent] [t1]
WHERE
	[t1].[ParentID] >= 1000

