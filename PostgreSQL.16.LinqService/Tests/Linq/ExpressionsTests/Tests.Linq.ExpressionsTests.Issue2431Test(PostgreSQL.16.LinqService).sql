BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue2431Table"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue2431Table"
(
	"Id"   Int     NOT NULL,
	"Json" VarChar     NULL
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
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
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
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
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
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
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	r."Id",
	r."Json"
FROM
	"Issue2431Table" r
WHERE
	r."Json"::json #>> '{json, text}' = 'test'

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue2431Table"

