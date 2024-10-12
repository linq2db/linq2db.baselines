BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "TrimTestTable"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "TrimTestTable"
(
	"ID"   Int  NOT NULL,
	"Data" text     NULL,

	CONSTRAINT "PK_TrimTestTable" PRIMARY KEY ("ID")
)

BeforeExecute
INSERT BULK "TrimTestTable"(ID, Data)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	r."ID",
	r."Data"
FROM
	"TrimTestTable" r
ORDER BY
	r."ID"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	r."ID",
	r."Data"
FROM
	"TrimTestTable" r
ORDER BY
	r."ID"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "TrimTestTable"

