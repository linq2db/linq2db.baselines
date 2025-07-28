﻿BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @value Int64
SET     @value = NULL

SELECT
	t1.ID,
	t1."Value_1"
FROM
	(
		SELECT
			r."PersonID" as ID,
			:value as "Value_1"
		FROM
			"Person" r
	) t1

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @value Int64
SET     @value = 2147483648

SELECT
	t1.ID,
	t1."Value_1"
FROM
	(
		SELECT
			r."PersonID" as ID,
			:value as "Value_1"
		FROM
			"Person" r
	) t1

