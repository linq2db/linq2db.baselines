-- Access.Jet.OleDb AccessOleDb

DELETE FROM
	[GrandChild] [c_1]
WHERE
	[c_1].[ParentID] >= 1000

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

INSERT INTO [GrandChild]
(
	[ParentID],
	[ChildID],
	[GrandChildID]
)
VALUES
(
	1001,
	1,
	1
)

-- Access.Jet.OleDb AccessOleDb

INSERT INTO [GrandChild]
(
	[ParentID],
	[ChildID],
	[GrandChildID]
)
VALUES
(
	1001,
	1,
	2
)

-- Access.Jet.OleDb AccessOleDb

DELETE FROM
	[GrandChild] [t1]
WHERE
	EXISTS(
		SELECT
			[a_GrandChildren].[ParentID],
			[a_GrandChildren].[ChildID]
		FROM
			([Parent] [gc]
				INNER JOIN [Child] [a_Children] ON ([gc].[ParentID] = [a_Children].[ParentID]))
				INNER JOIN [GrandChild] [a_GrandChildren] ON ([a_Children].[ParentID] = [a_GrandChildren].[ParentID] AND [a_Children].[ChildID] = [a_GrandChildren].[ChildID])
		WHERE
			[gc].[ParentID] IN (1001) AND
			[t1].[ParentID] = [a_GrandChildren].[ParentID] AND
			[t1].[ChildID] = [a_GrandChildren].[ChildID] AND
			[t1].[GrandChildID] = [a_GrandChildren].[GrandChildID]
	)

-- Access.Jet.OleDb AccessOleDb

DELETE FROM
	[GrandChild] [c_1]
WHERE
	[c_1].[ParentID] >= 1000

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

