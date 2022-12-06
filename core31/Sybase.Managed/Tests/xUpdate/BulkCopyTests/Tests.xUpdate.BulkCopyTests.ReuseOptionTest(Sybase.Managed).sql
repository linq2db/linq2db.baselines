BeforeExecute
BeginTransaction
BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [Parent]
(
	[ParentID],
	[Value1]
)
SELECT 111001,NULL

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
SELECT 111001,0

BeforeExecute
DisposeTransaction
