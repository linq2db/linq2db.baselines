-- Access.Jet.OleDb AccessOleDb
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

-- Access.Jet.OleDb AccessOleDb

UPDATE
	[Parent] [t]
SET
	[t].[Value1] = 1011
WHERE
	[t].[ParentID] = 1010

CommitTransaction
-- Access.Jet.OleDb AccessOleDb

SELECT TOP 1
	[t].[ParentID],
	[t].[Value1]
FROM
	[Parent] [t]
WHERE
	[t].[ParentID] = 1010

