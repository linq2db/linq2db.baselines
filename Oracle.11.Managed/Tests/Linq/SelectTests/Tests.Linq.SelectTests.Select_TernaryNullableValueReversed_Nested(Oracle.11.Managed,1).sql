﻿BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @value Int32
SET     @value = 1
DECLARE @p Int32
SET     @p = 1

SELECT
	:value,
	CASE
		WHEN 1 = 1 THEN :p
		ELSE 5
	END
FROM SYS.DUAL

