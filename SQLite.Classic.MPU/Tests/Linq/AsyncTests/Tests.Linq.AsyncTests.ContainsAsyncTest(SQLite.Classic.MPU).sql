﻿BeforeExecute
--  SQLite.Classic.MPU SQLite.Classic SQLite (asynchronously)
DECLARE @ID  -- Int32
SET     @ID = 1

SELECT
	CASE
		WHEN @ID IN (
			SELECT
				[t1].[PersonID]
			FROM
				[Person] [t1]
		)
			THEN 1
		ELSE 0
	END

