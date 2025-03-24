﻿BeforeExecute
--  PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

WITH "CTE_1" ("Obj_Operator")
AS
(
	SELECT
		x."LastName"
	FROM
		"Person" x
)
SELECT
	t1."Obj_Operator"
FROM
	"CTE_1" t1
LIMIT 1

BeforeExecute
--  PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	person_1."LastName"
FROM
	"Person" person_1
LIMIT 1

