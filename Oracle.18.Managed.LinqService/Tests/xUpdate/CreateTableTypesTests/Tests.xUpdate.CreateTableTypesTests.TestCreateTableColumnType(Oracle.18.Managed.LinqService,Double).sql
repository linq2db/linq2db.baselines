BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Double BinaryDouble -- Double
SET     @Double = 0D

INSERT INTO "CreateTableTypes"
(
	"Id",
	"Double"
)
VALUES
(
	:Id,
	:Double
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Double BinaryDouble -- Double
SET     @Double = 3.1400000000000001D

INSERT INTO "CreateTableTypes"
(
	"Id",
	"Double"
)
VALUES
(
	:Id,
	:Double
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Double"
FROM
	"CreateTableTypes" t1
ORDER BY
	t1."Id"

