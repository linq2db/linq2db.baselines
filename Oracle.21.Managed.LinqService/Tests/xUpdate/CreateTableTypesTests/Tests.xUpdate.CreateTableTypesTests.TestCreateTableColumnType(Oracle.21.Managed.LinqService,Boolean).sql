BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12 (asynchronously)
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Boolean Int16
SET     @Boolean = 0

INSERT INTO "CreateTableTypes"
(
	"Id",
	"Boolean"
)
VALUES
(
	:Id,
	:Boolean
)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12 (asynchronously)
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Boolean Int16
SET     @Boolean = 1

INSERT INTO "CreateTableTypes"
(
	"Id",
	"Boolean"
)
VALUES
(
	:Id,
	:Boolean
)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	t1."Id",
	t1."Boolean"
FROM
	"CreateTableTypes" t1
ORDER BY
	t1."Id"

