BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @ParentID  -- Int32
SET     @ParentID = 1

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				[Parent] [param]
			WHERE
				[param].[ParentID] = @ParentID AND [param].[ParentID] = 1
		)
			THEN 1
		ELSE 0
	END

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @ParentID  -- Int32
SET     @ParentID = 2

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				[Parent] [param]
			WHERE
				[param].[ParentID] = @ParentID AND [param].[ParentID] = 1
		)
			THEN 1
		ELSE 0
	END

