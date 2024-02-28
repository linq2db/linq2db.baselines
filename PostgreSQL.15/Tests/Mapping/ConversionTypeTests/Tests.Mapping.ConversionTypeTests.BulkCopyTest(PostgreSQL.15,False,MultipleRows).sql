﻿BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "TrimTestTable"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "TrimTestTable"
(
	"ID"   Int  NOT NULL,
	"Data" text     NULL,

	CONSTRAINT "PK_TrimTestTable" PRIMARY KEY ("ID")
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

INSERT INTO "TrimTestTable"
(
	"ID",
	"Data"
)
VALUES
(1,'***OOO***')

BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	r."ID",
	r."Data"
FROM
	"TrimTestTable" r
ORDER BY
	r."ID"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	r."ID",
	r."Data"
FROM
	"TrimTestTable" r
ORDER BY
	r."ID"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "TrimTestTable"

