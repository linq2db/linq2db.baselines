-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @ParentID  -- Int32
SET     @ParentID = 1

SELECT
	CASE
		WHEN CVar(@ParentID) IN (
			SELECT
				[p].[ParentID]
			FROM
				[Parent] [p]
			WHERE
				[p].[ParentID] = 1
		)
			THEN True
		ELSE False
	END

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @ParentID  -- Int32
SET     @ParentID = 2

SELECT
	CASE
		WHEN CVar(@ParentID) IN (
			SELECT
				[p].[ParentID]
			FROM
				[Parent] [p]
			WHERE
				[p].[ParentID] = 1
		)
			THEN True
		ELSE False
	END

