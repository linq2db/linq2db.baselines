-- Access.Ace.OleDb AccessOleDb
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1001
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

-- Access.Ace.OleDb AccessOleDb
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1002
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

-- Access.Ace.OleDb AccessOleDb
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1003
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

-- Access.Ace.OleDb AccessOleDb

DELETE FROM
	(
		SELECT TOP 2
			[c_1].[ParentID]
		FROM
			[Parent] [c_1]
		WHERE
			[c_1].[ParentID] > 1000
	) [p]
WHERE
	[p].[ParentID] IN (
		SELECT
			[t1].[ParentID]
		FROM
			(
				SELECT TOP 2
					[c_2].[ParentID]
				FROM
					[Parent] [c_2]
				WHERE
					[c_2].[ParentID] > 1000
			) [t1]
	)

-- Access.Ace.OleDb AccessOleDb

SELECT
	COUNT(*)
FROM
	[Parent] [c_1]
WHERE
	[c_1].[ParentID] > 1000

-- Access.Ace.OleDb AccessOleDb

DELETE FROM
	[Parent] [c_1]
WHERE
	[c_1].[ParentID] > 1000

