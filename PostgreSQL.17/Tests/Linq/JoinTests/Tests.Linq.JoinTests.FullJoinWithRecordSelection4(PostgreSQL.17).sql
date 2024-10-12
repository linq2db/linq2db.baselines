BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Fact"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Fact"
(
	"Id" Int NOT NULL,

	CONSTRAINT "PK_Fact" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

INSERT INTO "Fact"
(
	"Id"
)
VALUES
(3),
(4),
(5)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Tag"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Tag"
(
	"Id"     Int  NOT NULL,
	"FactId" Int  NOT NULL,
	"Name"   text NOT NULL,

	CONSTRAINT "PK_Tag" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

INSERT INTO "Tag"
(
	"Id",
	"FactId",
	"Name"
)
VALUES
(1,3,'Tag3'),
(2,3,'Tag3'),
(3,4,'Tag4'),
(4,6,'Tag6')

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	f."Id",
	ft."Id",
	ft."FactId",
	ft."Name"
FROM
	"Tag" ft
		FULL JOIN "Fact" f ON ft."FactId" = f."Id"
WHERE
	(f."Id" > 3 OR ft."FactId" > 3)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Tag"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Fact"

