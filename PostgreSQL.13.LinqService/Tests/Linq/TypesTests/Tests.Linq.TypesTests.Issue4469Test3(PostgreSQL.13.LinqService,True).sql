﻿BeforeExecute
--  PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	v."Integer"::Float / 33,
	v."Decimal"::Float / 33,
	v."Double" / 33
FROM
	"Issue4469Table" v
LIMIT 2

