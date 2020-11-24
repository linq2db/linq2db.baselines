BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE GLOBAL TEMPORARY TABLE "TestTable"
(
	"Id"    Int NOT NULL,
	"Value" Int NOT NULL
)
ON COMMIT DELETE ROWS

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DROP TABLE "TestTable"

