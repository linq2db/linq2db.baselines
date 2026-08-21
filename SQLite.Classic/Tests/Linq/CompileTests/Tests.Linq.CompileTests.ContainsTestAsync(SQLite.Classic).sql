-- SQLite.Classic SQLite
DECLARE @ParentID  -- Int32
SET     @ParentID = 1

SELECT
	CASE
		WHEN @ParentID IN (
			SELECT
				[c_1].[ParentID]
			FROM
				[Child] [c_1]
		)
			THEN 1
		ELSE 0
	END

-- SQLite.Classic SQLite
DECLARE @ParentID  -- Int32
SET     @ParentID = -1

SELECT
	CASE
		WHEN @ParentID IN (
			SELECT
				[c_1].[ParentID]
			FROM
				[Child] [c_1]
		)
			THEN 1
		ELSE 0
	END

