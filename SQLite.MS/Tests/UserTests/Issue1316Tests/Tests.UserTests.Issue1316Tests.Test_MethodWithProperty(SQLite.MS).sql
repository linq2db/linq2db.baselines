﻿BeforeExecute
--  SQLite.MS SQLite
DECLARE @ID  -- Int32
SET     @ID = 5

INSERT INTO [Issue1316Tests]
(
	[ID]
)
VALUES
(
	@ID
)

BeforeExecute
--  SQLite.MS SQLite
DECLARE @Item1  -- Int32
SET     @Item1 = 5

SELECT
	[t1].[ID]
FROM
	[Issue1316Tests] [t1]
WHERE
	[t1].[ID] = @Item1
LIMIT 2

