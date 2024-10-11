BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "WhereWithString"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "WhereWithString"
(
	"Id"          Int  NOT NULL,
	"StringValue" text     NULL,

	CONSTRAINT "PK_WhereWithString" PRIMARY KEY ("Id")
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

INSERT INTO "WhereWithString"
(
	"Id",
	"StringValue"
)
VALUES
(1,'Str1')

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	x."Id",
	x."StringValue"
FROM
	"WhereWithString" x
WHERE
	x."StringValue" LIKE '%Str%' ESCAPE '~' AND x."StringValue" IS NOT NULL

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "WhereWithString"

