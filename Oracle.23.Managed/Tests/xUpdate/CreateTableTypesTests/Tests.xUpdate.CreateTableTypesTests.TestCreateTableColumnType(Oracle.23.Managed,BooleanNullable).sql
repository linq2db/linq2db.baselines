-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @BooleanNullable Int16
SET     @BooleanNullable = NULL

INSERT INTO "CreateTableTypes"
(
	"Id",
	"BooleanNullable"
)
VALUES
(
	:Id,
	:BooleanNullable
)

-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 2
DECLARE @BooleanNullable Int16
SET     @BooleanNullable = 1

INSERT INTO "CreateTableTypes"
(
	"Id",
	"BooleanNullable"
)
VALUES
(
	:Id,
	:BooleanNullable
)

-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."BooleanNullable"
FROM
	"CreateTableTypes" t1
ORDER BY
	t1."Id"

