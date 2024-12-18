BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Table1"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Table1"
(
	"ID"  Int NOT NULL,
	"ID2" Int     NULL,

	CONSTRAINT "PK_Table1" PRIMARY KEY ("ID")
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @ID Integer -- Int32
SET     @ID = 1
DECLARE @ID2 Integer -- Int32
SET     @ID2 = 1

INSERT INTO "Table1"
(
	"ID",
	"ID2"
)
VALUES
(
	:ID,
	:ID2
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @ID Integer -- Int32
SET     @ID = 2
DECLARE @ID2 Integer -- Int32
SET     @ID2 = 2

INSERT INTO "Table1"
(
	"ID",
	"ID2"
)
VALUES
(
	:ID,
	:ID2
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Table2"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Table2"
(
	"ID"  Int NOT NULL,
	"ID3" Int     NULL,

	CONSTRAINT "PK_Table2" PRIMARY KEY ("ID")
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @ID Integer -- Int32
SET     @ID = 1
DECLARE @ID3 Integer -- Int32
SET     @ID3 = 1

INSERT INTO "Table2"
(
	"ID",
	"ID3"
)
VALUES
(
	:ID,
	:ID3
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Table3"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Table3"
(
	"ID" Int NOT NULL,

	CONSTRAINT "PK_Table3" PRIMARY KEY ("ID")
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @ID Integer -- Int32
SET     @ID = 1

INSERT INTO "Table3"
(
	"ID"
)
VALUES
(
	:ID
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Table4"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Table4"
(
	"ID"  Int NOT NULL,
	"ID3" Int     NULL,

	CONSTRAINT "PK_Table4" PRIMARY KEY ("ID")
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @ID Integer -- Int32
SET     @ID = 1
DECLARE @ID3 Integer -- Int32
SET     @ID3 = 1

INSERT INTO "Table4"
(
	"ID",
	"ID3"
)
VALUES
(
	:ID,
	:ID3
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @ID Integer -- Int32
SET     @ID = 2
DECLARE @ID3 Integer -- Int32
SET     @ID3 = NULL

INSERT INTO "Table4"
(
	"ID",
	"ID3"
)
VALUES
(
	:ID,
	:ID3
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	"a_Table2"."ID",
	"a_Table2"."ID3",
	"a_Table3"."ID"
FROM
	"Table1" r
		LEFT JOIN "Table2" "a_Table2" ON r."ID2" = "a_Table2"."ID" AND r."ID2" IS NOT NULL
		LEFT JOIN "Table3" "a_Table3" ON "a_Table2"."ID3" = "a_Table3"."ID" AND "a_Table2"."ID3" IS NOT NULL
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Table4" id
		WHERE
			"a_Table3"."ID" = id."ID3" AND id."ID3" IS NOT NULL AND
			id."ID" = r."ID"
	)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Table4"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Table3"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Table2"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Table1"

