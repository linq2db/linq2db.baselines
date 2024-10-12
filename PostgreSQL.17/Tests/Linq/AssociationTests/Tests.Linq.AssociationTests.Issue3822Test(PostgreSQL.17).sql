BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Dog"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Dog"
(
	"Id"      Int NOT NULL,
	"OwnerId" Int NOT NULL
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

INSERT INTO "Dog"
(
	"Id",
	"OwnerId"
)
VALUES
(1,1)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Human"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Human"
(
	"Id"      Int NOT NULL,
	"HouseId" Int NOT NULL
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

INSERT INTO "Human"
(
	"Id",
	"HouseId"
)
VALUES
(1,1)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "House"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "House"
(
	"Id" Int NOT NULL
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

INSERT INTO "House"
(
	"Id"
)
VALUES
(1)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Window"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "Window"
(
	"Id"       Int NOT NULL,
	"Position" Int NOT NULL
)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

INSERT INTO "Window"
(
	"Id",
	"Position"
)
VALUES
(6,6)

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t1."Id"
FROM
	"Dog" x
		INNER JOIN "Human" "a_Owner" ON x."OwnerId" = "a_Owner"."Id"
		INNER JOIN "House" "a_House" ON "a_Owner"."HouseId" = "a_House"."Id"
		LEFT JOIN (
			SELECT
				"a_WindowAtPosition"."Id"
			FROM
				"Window" "a_WindowAtPosition"
			WHERE
				"a_WindowAtPosition"."Position" = 6
			LIMIT 1
		) t1 ON 1=1
LIMIT 1

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Window"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "House"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Human"

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "Dog"

