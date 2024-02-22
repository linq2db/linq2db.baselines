﻿BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "SelectExpressionTable"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

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
-- Oracle.19.Managed Oracle.Managed Oracle12
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
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 1

SELECT
	CASE
		WHEN 1 = 1 THEN 1
		ELSE 0
	END as "c1"
FROM
	"SelectExpressionTable" t1
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "SelectExpressionTable"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

