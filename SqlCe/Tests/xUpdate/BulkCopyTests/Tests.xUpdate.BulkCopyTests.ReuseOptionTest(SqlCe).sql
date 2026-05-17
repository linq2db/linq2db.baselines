-- SqlCe

INSERT INTO [Parent]
(
	[ParentID],
	[Value1]
)
SELECT 111001,NULL

-- SqlCe

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
SELECT 111001,0

