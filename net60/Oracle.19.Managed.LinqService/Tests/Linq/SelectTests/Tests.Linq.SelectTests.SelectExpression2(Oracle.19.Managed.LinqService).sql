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
DECLARE @p_1 Raw(16) -- Binary
SET     @p_1 = HEXTORAW('1CB5D9B3F9892A44893BCD8A6F667D37')
DECLARE @p_2 Raw(16) -- Binary
SET     @p_2 = HEXTORAW('D4DCEF619D65E841910C506A9C2F31C5')
DECLARE @take Int32
SET     @take = 1

SELECT
	:p_1,
	:p_2
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

