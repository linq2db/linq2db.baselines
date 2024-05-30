BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue2816Table"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue2816Table"
(
	"Id"   Int  NOT NULL,
	"Text" text     NULL,

	CONSTRAINT "PK_Issue2816Table" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

INSERT INTO "Issue2816Table"
(
	"Id",
	"Text"
)
VALUES
(0,''),
(1,'a'),
(2,' m '),
(3,' '),
(4,'  '),
(5,NULL)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	p."Id",
	p."Text"
FROM
	"Issue2816Table" p
WHERE
	(p."Text" IS NULL OR LTRIM(p."Text", '	
                 　') = '')

BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	t1."Id",
	t1."Text"
FROM
	"Issue2816Table" t1

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue2816Table"

