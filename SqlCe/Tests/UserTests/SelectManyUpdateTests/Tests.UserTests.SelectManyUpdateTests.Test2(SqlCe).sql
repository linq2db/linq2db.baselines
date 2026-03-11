-- SqlCe
DECLARE @ChildID Int -- Int32
SET     @ChildID = 10

UPDATE
	[Child]
SET
	[ChildID] = @ChildID
WHERE
	1 = 0

