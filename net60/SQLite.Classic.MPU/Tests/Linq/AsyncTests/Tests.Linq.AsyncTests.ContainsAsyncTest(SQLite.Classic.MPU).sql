BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite (asynchronously)
DECLARE @ID  -- Int32
SET     @ID = 1

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				[Person] [param]
			WHERE
				[param].[PersonID] = @ID
		)
			THEN 1
		ELSE 0
	END

