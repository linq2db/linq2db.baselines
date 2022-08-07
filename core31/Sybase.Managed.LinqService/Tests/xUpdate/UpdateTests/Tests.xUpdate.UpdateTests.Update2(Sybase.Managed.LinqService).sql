﻿BeforeExecute
-- Sybase.Managed Sybase
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
-- Sybase.Managed Sybase
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1001

SELECT
	Count(*)
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = @ParentID

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1001

UPDATE
	[Parent]
SET
	[p].[ParentID] = [p].[ParentID] + 1
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = @ParentID

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1002

SELECT
	Count(*)
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = @ParentID

