BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Issue2431Table"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue2431Table"
(
	"Id"   Int     NOT NULL,
	"Json" VarChar     NULL
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Json Varchar -- String
SET     @Json = NULL

INSERT INTO "Issue2431Table"
(
	"Id",
	"Json"
)
VALUES
(
	:Id,
	:Json
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Json Varchar -- String
SET     @Json = NULL

INSERT INTO "Issue2431Table"
(
	"Id",
	"Json"
)
VALUES
(
	:Id,
	:Json
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @Json Varchar -- String
SET     @Json = NULL

INSERT INTO "Issue2431Table"
(
	"Id",
	"Json"
)
VALUES
(
	:Id,
	:Json
)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	r."Id",
	r."Json"
FROM
	"Issue2431Table" r
WHERE
	CASE
		WHEN r."Json"::json #>> '{json, text}' = 'test' THEN True
		ELSE False
	END

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Issue2431Table"

