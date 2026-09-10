-- PostgreSQL.9.3 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Grace Bigint -- Int64
SET     @Grace = 4567
DECLARE @Required Bigint -- Int64
SET     @Required = 4567

INSERT INTO "OptionalDurationRow"
(
	"Id",
	"Grace",
	"Required"
)
VALUES
(
	:Id,
	:Grace,
	:Required
)

-- PostgreSQL.9.3 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Grace Bigint -- Int64
SET     @Grace = NULL
DECLARE @Required Bigint -- Int64
SET     @Required = 4567

INSERT INTO "OptionalDurationRow"
(
	"Id",
	"Grace",
	"Required"
)
VALUES
(
	:Id,
	:Grace,
	:Required
)

-- PostgreSQL.9.3 PostgreSQL
SELECT
	t1."Id",
	t1."Grace",
	t1."Required"
FROM
	"OptionalDurationRow" t1
ORDER BY
	t1."Id"

-- PostgreSQL.9.3 PostgreSQL
DECLARE @Grace Bigint -- Int64
SET     @Grace = NULL

UPDATE
	"OptionalDurationRow"
SET
	"Grace" = :Grace
WHERE
	"OptionalDurationRow"."Id" = 1

-- PostgreSQL.9.3 PostgreSQL
DECLARE @Grace Bigint -- Int64
SET     @Grace = 4567

UPDATE
	"OptionalDurationRow"
SET
	"Grace" = :Grace
WHERE
	"OptionalDurationRow"."Id" = 2

-- PostgreSQL.9.3 PostgreSQL
SELECT
	t1."Id",
	t1."Grace",
	t1."Required"
FROM
	"OptionalDurationRow" t1
ORDER BY
	t1."Id"

