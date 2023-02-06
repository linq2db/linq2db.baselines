﻿BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "PKOnlyTable"';
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
		CREATE TABLE "PKOnlyTable"
		(
			ID Int NOT NULL,

			CONSTRAINT "PK_PKOnlyTable" PRIMARY KEY (ID)
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
SET     @ID = 2

INSERT INTO "PKOnlyTable"
(
	ID
)
VALUES
(
	:ID
)

BeforeExecute
-- Oracle.11.Managed Oracle11

MERGE INTO "PKOnlyTable" Target
USING (
	SELECT 1 AS ID FROM sys.dual
	UNION ALL
	SELECT 2 FROM sys.dual
	UNION ALL
	SELECT 3 FROM sys.dual) "Source"
ON (Target.ID = "Source".ID)

WHEN NOT MATCHED THEN
INSERT
(
	ID
)
VALUES
(
	"Source".ID
)

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t1.ID
FROM
	"PKOnlyTable" t1
ORDER BY
	t1.ID

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "PKOnlyTable"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

