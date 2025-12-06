-- Oracle.11.Managed Oracle11
DECLARE @Id Int32
SET     @Id = 1
DECLARE @IntEnum Int32
SET     @IntEnum = 11

INSERT INTO "CreateTableTypes"
(
	"Id",
	"IntEnum"
)
VALUES
(
	:Id,
	:IntEnum
)

-- Oracle.11.Managed Oracle11
DECLARE @Id Int32
SET     @Id = 2
DECLARE @IntEnum Int32
SET     @IntEnum = 60

INSERT INTO "CreateTableTypes"
(
	"Id",
	"IntEnum"
)
VALUES
(
	:Id,
	:IntEnum
)

-- Oracle.11.Managed Oracle11

SELECT
	t1."Id",
	t1."IntEnum"
FROM
	"CreateTableTypes" t1
ORDER BY
	t1."Id"

