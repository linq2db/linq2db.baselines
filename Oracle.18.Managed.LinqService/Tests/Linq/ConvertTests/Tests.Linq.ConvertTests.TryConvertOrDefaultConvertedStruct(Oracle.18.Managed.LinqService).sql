﻿BeforeExecute
--  Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	CAST('123' AS Int DEFAULT 100500 ON CONVERSION ERROR)
FROM SYS.DUAL

