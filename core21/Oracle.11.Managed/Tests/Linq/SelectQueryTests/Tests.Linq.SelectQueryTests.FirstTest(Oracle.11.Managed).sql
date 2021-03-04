BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE "SampleClass"
(
	"Id"    Int NOT NULL,
	"Value" Int NOT NULL
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @take Int32
SET     @take = 1

SELECT
	CURRENT_TIMESTAMP + 1D * INTERVAL '1' DAY,
	CURRENT_TIMESTAMP + 2D * INTERVAL '1' DAY
FROM SYS.DUAL
WHERE
	ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "SampleClass"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

