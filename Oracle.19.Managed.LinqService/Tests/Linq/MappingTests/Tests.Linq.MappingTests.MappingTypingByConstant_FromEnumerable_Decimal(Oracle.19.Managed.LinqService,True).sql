﻿BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	arg."Id",
	arg."Value"
FROM
	"Person" entity
		INNER JOIN (
			SELECT 1 AS "Id", NULL AS "Value" FROM sys.dual) arg ON entity."PersonID" = arg."Id"

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	arg."Id",
	arg."Value"
FROM
	"Person" entity
		INNER JOIN (
			SELECT 1 AS "Id", 2147483648.123 AS "Value" FROM sys.dual) arg ON entity."PersonID" = arg."Id"

