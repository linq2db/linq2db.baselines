BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE "CreateTableTypes"
(
	"Id"            Int        NOT NULL,
	"Int64Nullable" Number(19)     NULL
)

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Int64Nullable Int64
SET     @Int64Nullable = NULL

INSERT INTO "CreateTableTypes"
(
	"Id",
	"Int64Nullable"
)
VALUES
(
	:Id,
	:Int64Nullable
)

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Int64Nullable Int64
SET     @Int64Nullable = 4

INSERT INTO "CreateTableTypes"
(
	"Id",
	"Int64Nullable"
)
VALUES
(
	:Id,
	:Int64Nullable
)

BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Int64Nullable"
FROM
	"CreateTableTypes" t1
ORDER BY
	t1."Id"

BeforeExecute
-- Oracle.Managed Oracle12

DROP TABLE "CreateTableTypes"

