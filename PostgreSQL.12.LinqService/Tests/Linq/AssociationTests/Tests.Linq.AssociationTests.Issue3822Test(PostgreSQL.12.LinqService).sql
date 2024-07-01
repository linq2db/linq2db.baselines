BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Dog"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Dog"
(
	"Id"      Int NOT NULL,
	"OwnerId" Int NOT NULL
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @OwnerId Integer -- Int32
SET     @OwnerId = 1

INSERT INTO "Dog"
(
	"Id",
	"OwnerId"
)
VALUES
(
	:Id,
	:OwnerId
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Human"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Human"
(
	"Id"      Int NOT NULL,
	"HouseId" Int NOT NULL
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @HouseId Integer -- Int32
SET     @HouseId = 1

INSERT INTO "Human"
(
	"Id",
	"HouseId"
)
VALUES
(
	:Id,
	:HouseId
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "House"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "House"
(
	"Id" Int NOT NULL
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1

INSERT INTO "House"
(
	"Id"
)
VALUES
(
	:Id
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Window"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "Window"
(
	"Id"       Int NOT NULL,
	"Position" Int NOT NULL
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 6
DECLARE @Position Integer -- Int32
SET     @Position = 6

INSERT INTO "Window"
(
	"Id",
	"Position"
)
VALUES
(
	:Id,
	:Position
)

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

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
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Window"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "House"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Human"

BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "Dog"

