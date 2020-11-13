BeforeExecute
-- Oracle.Managed Oracle12

CREATE GLOBAL TEMPORARY TABLE "TestTable"
(
	"Id"    Int NOT NULL,
	"Value" Int NOT NULL
)
ON COMMIT PRESERVE ROWS

BeforeExecute
-- Oracle.Managed Oracle12

DROP TABLE "TestTable"

