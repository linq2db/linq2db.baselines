-- Access.Jet.OleDb AccessOleDb
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 111001
DECLARE @Value1 Integer -- Int32
SET     @Value1 = NULL

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

-- Access.Jet.OleDb AccessOleDb
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 111001
DECLARE @ChildID Integer -- Int32
SET     @ChildID = 0

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
VALUES
(
	@ParentID,
	@ChildID
)

