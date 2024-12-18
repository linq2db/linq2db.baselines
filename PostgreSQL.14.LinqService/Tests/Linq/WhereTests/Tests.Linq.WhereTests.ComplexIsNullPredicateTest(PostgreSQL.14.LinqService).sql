BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "ComplexPredicate"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS "ComplexPredicate"
(
	"Id"    Int  NOT NULL,
	"Value" text     NULL
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Value Text -- String
SET     @Value = NULL

INSERT INTO "ComplexPredicate"
(
	"Id",
	"Value"
)
VALUES
(
	:Id,
	:Value
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Value Text(5) -- String
SET     @Value = 'other'

INSERT INTO "ComplexPredicate"
(
	"Id",
	"Value"
)
VALUES
(
	:Id,
	:Value
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @Value Text(3) -- String
SET     @Value = '123'

INSERT INTO "ComplexPredicate"
(
	"Id",
	"Value"
)
VALUES
(
	:Id,
	:Value
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 4
DECLARE @Value Text(4) -- String
SET     @Value = 'test'

INSERT INTO "ComplexPredicate"
(
	"Id",
	"Value"
)
VALUES
(
	:Id,
	:Value
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 5
DECLARE @Value Text(1) -- String
SET     @Value = '1'

INSERT INTO "ComplexPredicate"
(
	"Id",
	"Value"
)
VALUES
(
	:Id,
	:Value
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	r."Id",
	r."Value"
FROM
	"ComplexPredicate" r
WHERE
	CASE
		WHEN r."Value" = '123' AND r."Value" IS NOT NULL THEN True
		ELSE False
	END = CASE
		WHEN r."Value" = '1' AND r."Value" IS NOT NULL OR r."Value" = 'test' AND r."Value" IS NOT NULL AND (r."Value" <> '1' OR r."Value" IS NULL)
			THEN True
		ELSE False
	END
ORDER BY
	r."Id"

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Id",
	t1."Value"
FROM
	"ComplexPredicate" t1

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS "ComplexPredicate"

