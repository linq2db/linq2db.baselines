BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12 (asynchronously)
DECLARE @Id Int32
SET     @Id = 1
DECLARE @DoubleNullable BinaryDouble -- Double
SET     @DoubleNullable = NULL

INSERT INTO "CreateTableTypes"
(
	"Id",
	"DoubleNullable"
)
VALUES
(
	:Id,
	:DoubleNullable
)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12 (asynchronously)
DECLARE @Id Int32
SET     @Id = 2
DECLARE @DoubleNullable BinaryDouble -- Double
SET     @DoubleNullable = 4.1299999999999999D

INSERT INTO "CreateTableTypes"
(
	"Id",
	"DoubleNullable"
)
VALUES
(
	:Id,
	:DoubleNullable
)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	t1."Id",
	t1."DoubleNullable"
FROM
	"CreateTableTypes" t1
ORDER BY
	t1."Id"

