﻿BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	v."Integer"::decimal / 33,
	v."Decimal" / 33,
	v."Double" / 33
FROM
	"Issue4469Table" v
LIMIT 2

