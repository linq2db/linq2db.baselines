BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue4160Person"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue4160Person"
(
	"Code" text     NULL
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

INSERT INTO "Issue4160Person"
(
	"Code"
)
VALUES
('SD'),
('SD'),
('SH')

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue4160City"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Issue4160City"
(
	"Code" text     NULL,
	"Name" text     NULL
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

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
-- PostgreSQL.15 PostgreSQL

SELECT DISTINCT
	(
		SELECT
			cc."Name"
		FROM
			"Issue4160City" cc
		WHERE
			cc."Code" = pe."Code" OR cc."Code" IS NULL AND pe."Code" IS NULL
		LIMIT 1
	)
FROM
	"Issue4160Person" pe

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue4160City"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Issue4160Person"

