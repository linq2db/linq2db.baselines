-- Access.Jet.OleDb AccessOleDb

INSERT INTO [Parent]
(
	[ParentID]
)
VALUES
(
	1001
)

-- Access.Jet.OleDb AccessOleDb

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
VALUES
(
	1001,
	1
)

-- Access.Jet.OleDb AccessOleDb

INSERT INTO [Child]
(
	[ParentID],
	[ChildID]
)
VALUES
(
	1001,
	2
)

-- Access.Jet.OleDb AccessOleDb

DELETE FROM
	[Child] [t1]
WHERE
	EXISTS(
		SELECT
			[a_Children].[ParentID]
		FROM
			[Parent] [p]
				INNER JOIN [Child] [a_Children] ON ([p].[ParentID] = [a_Children].[ParentID])
		WHERE
			[p].[ParentID] >= 1000 AND [t1].[ParentID] = [a_Children].[ParentID] AND
			[t1].[ChildID] = [a_Children].[ChildID]
	)

-- Access.Jet.OleDb AccessOleDb

DELETE FROM
	[Child] [c_1]
WHERE
	[c_1].[ParentID] >= 1000

-- Access.Jet.OleDb AccessOleDb

DELETE FROM
	[Parent] [c_1]
WHERE
	[c_1].[ParentID] >= 1000

