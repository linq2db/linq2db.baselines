﻿BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @take Int -- Int32
SET     @take = 3

SELECT TOP (@take)
	[x].[position]
FROM
	[entities] [x]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(VALUES
				(-10,10)
			) [t]([X], [Y])
		WHERE
			[x].[position].x > [t].[X]
	)

