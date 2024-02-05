﻿BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "DynamicTable"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "DynamicTable"
(
	"ID"             SERIAL  NOT NULL,
	"Not Identifier" Int     NOT NULL,
	"Some Value"     Int     NOT NULL,

	CONSTRAINT "PK_DynamicTable" PRIMARY KEY ("ID")
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

INSERT INTO "DynamicTable"
(
	"Not Identifier",
	"Some Value"
)
VALUES
(77,5),
(77,5)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	t1."Not Identifier",
	Count(*),
	Sum(t1."Some Value")
FROM
	"DynamicTable" t1
GROUP BY
	t1."Not Identifier"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "DynamicTable"

