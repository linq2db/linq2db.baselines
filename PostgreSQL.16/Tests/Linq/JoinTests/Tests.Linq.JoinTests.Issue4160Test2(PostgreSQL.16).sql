BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue4160Person"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue4160Person"
(
	"Code" text     NULL
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

INSERT INTO "Issue4160Person"
(
	"Code"
)
VALUES
('SD'),
('SD'),
('SH')

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue4160City"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue4160City"
(
	"Code" text     NULL,
	"Name" text     NULL
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

INSERT INTO "Issue4160City"
(
	"Code",
	"Name"
)
VALUES
('SD','SYDNEY'),
('SD','SUNDAY'),
('SH','SYDHIP')

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT DISTINCT
	cc_1."Value_1"
FROM
	"Issue4160Person" t1
		LEFT JOIN LATERAL (
			SELECT
				cc."Name" as "Value_1"
			FROM
				"Issue4160City" cc
			WHERE
				cc."Code" = t1."Code" OR cc."Code" IS NULL AND t1."Code" IS NULL
			LIMIT 1
		) cc_1 ON 1=1

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue4160City"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue4160Person"

