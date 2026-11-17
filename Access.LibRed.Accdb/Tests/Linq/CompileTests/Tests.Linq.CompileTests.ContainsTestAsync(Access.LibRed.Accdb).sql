-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @ParentID  -- Int32
SET     @ParentID = 1

SELECT
	CASE
		WHEN CVar(@ParentID) IN (
			SELECT
				[c_1].[ParentID]
			FROM
				[Child] [c_1]
		)
			THEN True
		ELSE False
	END

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @ParentID  -- Int32
SET     @ParentID = -1

SELECT
	CASE
		WHEN CVar(@ParentID) IN (
			SELECT
				[c_1].[ParentID]
			FROM
				[Child] [c_1]
		)
			THEN True
		ELSE False
	END

