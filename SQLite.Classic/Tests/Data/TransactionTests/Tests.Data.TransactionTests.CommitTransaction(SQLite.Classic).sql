BeforeExecute
-- SQLite.Classic SQLite
DECLARE @ParentID  -- Int32
SET     @ParentID = 1010
DECLARE @Value1  -- Int32
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
BeginTransaction
BeforeExecute
-- SQLite.Classic SQLite

UPDATE
	[Parent]
SET
	[Value1] = 1011
WHERE
	[Parent].[ParentID] = 1010

BeforeExecute
CommitTransaction
BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t].[ParentID],
	[t].[Value1]
FROM
	[Parent] [t]
WHERE
	[t].[ParentID] = 1010
LIMIT 1

