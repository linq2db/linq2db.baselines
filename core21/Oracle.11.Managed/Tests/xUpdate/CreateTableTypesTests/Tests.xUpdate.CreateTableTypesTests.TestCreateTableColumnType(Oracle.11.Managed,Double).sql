BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE "CreateTableTypes"
(
	"Id"     Int   NOT NULL,
	"Double" Float NOT NULL
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Double_1 BinaryDouble -- Double
SET     @Double_1 = 0D

INSERT INTO "CreateTableTypes"
(
	"Id",
	"Double"
)
VALUES
(
	:Id,
	:Double_1
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Double_1 BinaryDouble -- Double
SET     @Double_1 = 3.1400000000000001D

INSERT INTO "CreateTableTypes"
(
	"Id",
	"Double"
)
VALUES
(
	:Id,
	:Double_1
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	t1."Id",
	t1."Double"
FROM
	"CreateTableTypes" t1
ORDER BY
	t1."Id"

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DROP TABLE "CreateTableTypes"

