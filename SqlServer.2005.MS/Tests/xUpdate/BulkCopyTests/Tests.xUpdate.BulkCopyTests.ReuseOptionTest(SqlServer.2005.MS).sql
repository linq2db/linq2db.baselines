-- SqlServer.2005.MS SqlServer.2005

INSERT INTO [Parent]
(
	[ParentID],
	[Value1]
)
SELECT 111001,NULL

-- SqlServer.2005.MS SqlServer.2005

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
SELECT 111001,0

