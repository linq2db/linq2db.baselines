﻿BeforeExecute
-- SqlServer.2012 (asynchronously)
DECLARE @p Int -- Int32
SET     @p = 2

SELECT
	IIF(EXISTS(
		SELECT
			*
		FROM
			[AsyncDataTable] [c_1]
		WHERE
			[c_1].[Id] = @p
	), 1, 0)

