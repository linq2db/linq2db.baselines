﻿BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "TrimTestTable"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "TrimTestTable"
(
	"ID"   Int  NOT NULL,
	"Data" text     NULL,

	CONSTRAINT "PK_TrimTestTable" PRIMARY KEY ("ID")
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

INSERT INTO "TrimTestTable"
(
	"ID",
	"Data"
)
VALUES
(1,'***OOO***')

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

INSERT INTO "TrimTestTable"
(
	"ID",
	"Data"
)
SELECT
	t1."ID" + 1,
	'***HHH***'
FROM
	"TrimTestTable" t1
RETURNING
	"TrimTestTable"."ID",
	"TrimTestTable"."Data"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	r."ID",
	r."Data"
FROM
	"TrimTestTable" r
ORDER BY
	r."ID"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	r."ID",
	r."Data"
FROM
	"TrimTestTable" r
ORDER BY
	r."ID"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "TrimTestTable"

