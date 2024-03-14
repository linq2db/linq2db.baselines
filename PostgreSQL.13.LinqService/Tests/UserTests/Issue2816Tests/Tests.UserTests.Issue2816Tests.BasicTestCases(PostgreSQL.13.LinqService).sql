BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Issue2816Table"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue2816Table"
(
	"Id"   Int  NOT NULL,
	"Text" text     NULL,

	CONSTRAINT "PK_Issue2816Table" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 0
DECLARE @Text Text -- String
SET     @Text = ''

INSERT INTO "Issue2816Table"
(
	"Id",
	"Text"
)
VALUES
(
	:Id,
	:Text
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Text Text(1) -- String
SET     @Text = 'a'

INSERT INTO "Issue2816Table"
(
	"Id",
	"Text"
)
VALUES
(
	:Id,
	:Text
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Text Text(3) -- String
SET     @Text = ' m '

INSERT INTO "Issue2816Table"
(
	"Id",
	"Text"
)
VALUES
(
	:Id,
	:Text
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @Text Text(1) -- String
SET     @Text = ' '

INSERT INTO "Issue2816Table"
(
	"Id",
	"Text"
)
VALUES
(
	:Id,
	:Text
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 4
DECLARE @Text Text(2) -- String
SET     @Text = '  '

INSERT INTO "Issue2816Table"
(
	"Id",
	"Text"
)
VALUES
(
	:Id,
	:Text
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 5
DECLARE @Text Text -- String
SET     @Text = NULL

INSERT INTO "Issue2816Table"
(
	"Id",
	"Text"
)
VALUES
(
	:Id,
	:Text
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	p."Id",
	p."Text"
FROM
	"Issue2816Table" p
WHERE
	(p."Text" IS NULL OR LTRIM(p."Text", '	
                 　') = '')

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Id",
	t1."Text"
FROM
	"Issue2816Table" t1

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Issue2816Table"

