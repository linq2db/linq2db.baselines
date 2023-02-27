BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite (asynchronously)
DECLARE @p_1  -- Int32
SET     @p_1 = 1

SELECT
	CASE
		WHEN @p_1 IN (
			SELECT
				[c_1].[ParentID]
			FROM
				[Child] [c_1]
		)
			THEN 1
		ELSE 0
	END

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite (asynchronously)
DECLARE @p_1  -- Int32
SET     @p_1 = -1

SELECT
	CASE
		WHEN @p_1 IN (
			SELECT
				[c_1].[ParentID]
			FROM
				[Child] [c_1]
		)
			THEN 1
		ELSE 0
	END

