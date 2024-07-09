﻿BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @ID  -- Int32
SET     @ID = 3
DECLARE @ID_1  -- Int32
SET     @ID_1 = 4

SELECT
	[n].[FirstName],
	[n].[PersonID]
FROM
	[Person] [t1]
		INNER JOIN (
			SELECT NULL [FirstName], NULL [PersonID] WHERE 1 = 0
			UNION ALL
			VALUES
				('Janet',@ID), ('Doe',@ID_1)
			) [n] ON [t1].[PersonID] = [n].[PersonID]
ORDER BY
	[n].[PersonID]

