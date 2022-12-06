BeforeExecute
BeginTransaction
BeforeExecute
-- SqlCe

INSERT INTO [Parent]
(
	[ParentID],
	[Value1]
)
SELECT 111001,NULL

BeforeExecute
-- SqlCe

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
SELECT 111001,0

BeforeExecute
DisposeTransaction
