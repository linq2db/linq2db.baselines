BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Issue2431Table"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue2431Table"
(
	"Id"   Int     NOT NULL,
	"Json" VarChar     NULL
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

INSERT INTO "Issue2431Table"
(
	"Id",
	"Json"
)
VALUES
(1,NULL),
(2,NULL),
(3,NULL)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

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
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Issue2431Table"

