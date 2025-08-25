BeforeExecute
-- SqlServer.2016 (asynchronously)
DECLARE @id Int -- Int32
SET     @id = 1

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
SELECT
	[c_1].[ParentID],
	@id
FROM
	[Child] [c_1]
WHERE
	[c_1].[ChildID] = 111

