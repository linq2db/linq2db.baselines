-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Grace Int64
SET     @Grace = 4567
DECLARE @Required Int64
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

-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Grace Int64
SET     @Grace = NULL
DECLARE @Required Int64
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

-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	t1."Id",
	t1."Grace",
	t1."Required"
FROM
	"OptionalDurationRow" t1
ORDER BY
	t1."Id"

-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Grace Int64
SET     @Grace = NULL

UPDATE
	"OptionalDurationRow" r
SET
	"Grace" = :Grace
WHERE
	r."Id" = 1

-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Grace Int64
SET     @Grace = 4567

UPDATE
	"OptionalDurationRow" r
SET
	"Grace" = :Grace
WHERE
	r."Id" = 2

-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	t1."Id",
	t1."Grace",
	t1."Required"
FROM
	"OptionalDurationRow" t1
ORDER BY
	t1."Id"

