BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE "SampleClass"
(
	"Id"    Int NOT NULL,
	"Value" Int NOT NULL
)

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 1

SELECT
	CURRENT_TIMESTAMP + 1D * INTERVAL '1' DAY as "Value1",
	CURRENT_TIMESTAMP + 2D * INTERVAL '1' DAY as "Value2"
FROM SYS.DUAL
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "SampleClass"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

