-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @IntEnumNullable Int32
SET     @IntEnumNullable = NULL

INSERT INTO "CreateTableTypes"
(
	"Id",
	"IntEnumNullable"
)
VALUES
(
	:Id,
	:IntEnumNullable
)

-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 2
DECLARE @IntEnumNullable Int32
SET     @IntEnumNullable = 60

INSERT INTO "CreateTableTypes"
(
	"Id",
	"IntEnumNullable"
)
VALUES
(
	:Id,
	:IntEnumNullable
)

-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."IntEnumNullable"
FROM
	"CreateTableTypes" t1
ORDER BY
	t1."Id"

