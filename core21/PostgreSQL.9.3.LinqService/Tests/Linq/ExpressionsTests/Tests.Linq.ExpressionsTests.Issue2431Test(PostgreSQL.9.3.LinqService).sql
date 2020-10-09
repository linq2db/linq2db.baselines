BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

CREATE TABLE "Issue2431Table"
(
	"Id"   Int     NOT NULL,
	"Json" VarChar     NULL
)

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

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
-- PostgreSQL.9.3 PostgreSQL

SELECT
	r."Id",
	r."Json"
FROM
	"Issue2431Table" r
WHERE
	CASE
		WHEN r."Json"::json #>> '{json, text}' = 'test'
			THEN True
		ELSE False
	END = True

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

DROP TABLE "Issue2431Table"

