﻿BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @value Int -- Int32
SET     @value = 1
DECLARE @p Int -- Int32
SET     @p = 1

SELECT
	@value,
	CASE
		WHEN 1 = 1 THEN @p
		ELSE 5
	END

