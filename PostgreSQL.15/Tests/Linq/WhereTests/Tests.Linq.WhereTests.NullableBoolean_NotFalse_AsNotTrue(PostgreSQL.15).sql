﻿BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	r."ID",
	r."Bool"
FROM
	"NullableBool" r
WHERE
	r."Bool" = True OR r."Bool" IS NULL

