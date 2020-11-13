BeforeExecute
-- Oracle.Managed Oracle12

CREATE GLOBAL TEMPORARY TABLE "TestTable"
(
	"Id"    Int NOT NULL,
	"Value" Int NOT NULL
)
ON COMMIT DELETE ROWS

BeforeExecute
-- Oracle.Managed Oracle12

DROP TABLE "TestTable"

