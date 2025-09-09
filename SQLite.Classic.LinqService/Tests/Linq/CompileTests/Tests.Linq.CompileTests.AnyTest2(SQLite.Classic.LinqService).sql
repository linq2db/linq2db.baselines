BeforeExecute
-- SQLite.Classic SQLite (asynchronously)
DECLARE @p  -- Int32
SET     @p = 1

SELECT
	EXISTS(
		SELECT
			*
		FROM
			[Child] [c_1]
		WHERE
			[c_1].[ParentID] = @p
	)

BeforeExecute
-- SQLite.Classic SQLite (asynchronously)
DECLARE @p  -- Int32
SET     @p = -1

SELECT
	EXISTS(
		SELECT
			*
		FROM
			[Child] [c_1]
		WHERE
			[c_1].[ParentID] = @p
	)

