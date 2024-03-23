BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Fact"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Fact"
(
	"Id" Int NOT NULL,

	CONSTRAINT "PK_Fact" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

INSERT INTO "Fact"
(
	"Id"
)
VALUES
(3),
(4),
(5)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Tag"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Tag"
(
	"Id"     Int  NOT NULL,
	"FactId" Int  NOT NULL,
	"Name"   text NOT NULL,

	CONSTRAINT "PK_Tag" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

INSERT INTO "Tag"
(
	"Id",
	"FactId",
	"Name"
)
VALUES
(1,3,'Tag3'),
(2,3,'Tag3'),
(3,4,'Tag4')

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	fact_1."Id",
	"leftTag"."Id",
	"leftTag"."FactId",
	"leftTag"."Name"
FROM
	"Fact" fact_1
		LEFT JOIN "Tag" "leftTag" ON "leftTag"."FactId" = fact_1."Id"
WHERE
	fact_1."Id" > 3
ORDER BY
	fact_1."Id"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Tag"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Fact"

