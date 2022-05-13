BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "SelectExpressionTable"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "SelectExpressionTable"
		(
			ID Int NOT NULL,

			CONSTRAINT "PK_SelectExpressionTable" PRIMARY KEY (ID)
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @ID Int32
SET     @ID = 1

INSERT INTO "SelectExpressionTable"
(
	ID
)
VALUES
(
	:ID
)

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @take Int32
SET     @take = 1

SELECT
	1
FROM
	"SelectExpressionTable" t1
WHERE
	ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "SelectExpressionTable"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

