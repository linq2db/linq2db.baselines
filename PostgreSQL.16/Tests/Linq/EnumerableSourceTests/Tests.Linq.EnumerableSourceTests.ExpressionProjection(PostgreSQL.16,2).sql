﻿BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @ID Integer -- Int32
SET     @ID = 3
DECLARE @ID_1 Integer -- Int32
SET     @ID_1 = 4

SELECT
	n."ID",
	n."FirstName"
FROM
	"Person" t1
		INNER JOIN (VALUES
			(:ID,'Janet'), (:ID_1,'Doe')
		) n("ID", "FirstName") ON t1."PersonID" = n."ID"
ORDER BY
	n."ID"

