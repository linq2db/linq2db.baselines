﻿BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "NullableBool"

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "NullableBool"
(
	"ID"   Int     NOT NULL,
	"Bool" Boolean     NULL
)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	r."ID",
	r."Bool"
FROM
	"NullableBool" r
WHERE
	(r."Bool" = True OR r."Bool" IS NULL)

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "NullableBool"

