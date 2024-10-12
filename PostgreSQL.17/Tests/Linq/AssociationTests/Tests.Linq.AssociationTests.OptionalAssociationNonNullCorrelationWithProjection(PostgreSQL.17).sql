BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Table1"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Table1"
(
	"ID"  Int NOT NULL,
	"ID2" Int     NULL,

	CONSTRAINT "PK_Table1" PRIMARY KEY ("ID")
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

INSERT INTO "Table1"
(
	"ID",
	"ID2"
)
VALUES
(1,1),
(2,2)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Table2"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Table2"
(
	"ID"  Int NOT NULL,
	"ID3" Int     NULL,

	CONSTRAINT "PK_Table2" PRIMARY KEY ("ID")
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

INSERT INTO "Table2"
(
	"ID",
	"ID3"
)
VALUES
(1,1)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Table3"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Table3"
(
	"ID" Int NOT NULL,

	CONSTRAINT "PK_Table3" PRIMARY KEY ("ID")
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

INSERT INTO "Table3"
(
	"ID"
)
VALUES
(1)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Table4"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Table4"
(
	"ID"  Int NOT NULL,
	"ID3" Int     NULL,

	CONSTRAINT "PK_Table4" PRIMARY KEY ("ID")
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

INSERT INTO "Table4"
(
	"ID",
	"ID3"
)
VALUES
(1,1),
(2,NULL)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	"a_Table2"."ID",
	"a_Table2"."ID3",
	"a_Table3"."ID"
FROM
	"Table1" r
		LEFT JOIN "Table2" "a_Table2" ON r."ID2" = "a_Table2"."ID"
		LEFT JOIN "Table3" "a_Table3" ON "a_Table2"."ID3" = "a_Table3"."ID"
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Table4" id
		WHERE
			"a_Table3"."ID" IS NOT NULL AND "a_Table3"."ID" = id."ID3" AND
			id."ID" = r."ID"
	)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Table4"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Table3"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Table2"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Table1"

