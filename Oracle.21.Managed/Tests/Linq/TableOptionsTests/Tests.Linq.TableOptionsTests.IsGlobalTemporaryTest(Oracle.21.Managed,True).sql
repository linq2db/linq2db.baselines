BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

CREATE GLOBAL TEMPORARY TABLE "IsGlobalTemporaryTable"
(
	"Id"    Int NOT NULL,
	"Value" Int NOT NULL
)
ON COMMIT PRESERVE ROWS

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Value"
FROM
	"IsGlobalTemporaryTable" t1

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "IsGlobalTemporaryTable"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

