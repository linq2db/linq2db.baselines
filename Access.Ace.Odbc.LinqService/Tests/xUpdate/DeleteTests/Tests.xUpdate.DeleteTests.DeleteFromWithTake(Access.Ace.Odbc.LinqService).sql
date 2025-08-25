BeforeExecute
-- Access.Ace.Odbc AccessODBC (asynchronously)
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1001
DECLARE @Value1 Int -- Int32
SET     @Value1 = NULL

INSERT INTO [Parent]
(
	[ParentID],
	[Value1]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC (asynchronously)
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1002
DECLARE @Value1 Int -- Int32
SET     @Value1 = NULL

INSERT INTO [Parent]
(
	[ParentID],
	[Value1]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC (asynchronously)
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1003
DECLARE @Value1 Int -- Int32
SET     @Value1 = NULL

INSERT INTO [Parent]
(
	[ParentID],
	[Value1]
)
VALUES
(
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC (asynchronously)

DELETE FROM
	(
		SELECT TOP 2
			[c_1].[ParentID]
		FROM
			[Parent] [c_1]
		WHERE
			[c_1].[ParentID] > 1000
		ORDER BY
			[c_1].[ParentID]
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
				ORDER BY
					[c_2].[ParentID]
			) [t1]
	)

BeforeExecute
-- Access.Ace.Odbc AccessODBC (asynchronously)

SELECT
	COUNT(*)
FROM
	[Parent] [c_1]
WHERE
	[c_1].[ParentID] > 1000

BeforeExecute
-- Access.Ace.Odbc AccessODBC (asynchronously)

DELETE FROM
	[Parent] [c_1]
WHERE
	[c_1].[ParentID] = 1003

