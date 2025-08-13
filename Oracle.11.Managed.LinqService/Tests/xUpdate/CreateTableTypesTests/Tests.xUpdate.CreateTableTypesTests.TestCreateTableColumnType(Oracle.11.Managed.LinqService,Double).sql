BeforeExecute
-- Oracle.11.Managed Oracle11
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
-- Oracle.11.Managed Oracle11
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
-- Oracle.11.Managed Oracle11

SELECT
	t1."Id",
	t1."Double"
FROM
	"CreateTableTypes" t1
ORDER BY
	t1."Id"

