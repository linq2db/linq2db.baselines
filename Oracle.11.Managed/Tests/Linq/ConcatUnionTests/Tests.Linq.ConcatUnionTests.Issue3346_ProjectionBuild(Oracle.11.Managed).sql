﻿BeforeExecute
--  Oracle.11.Managed Oracle11

SELECT
	x."Id",
	x."FirstName",
	x."LastName"
FROM
	"ComplexPerson" x
WHERE
	x."Id" < 10
UNION
SELECT
	x_1."Id",
	x_1."FirstName",
	x_1."LastName"
FROM
	"ComplexPerson" x_1
WHERE
	x_1."Id" < 20

