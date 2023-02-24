﻿BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	BEGIN
		EXECUTE IMMEDIATE 'DROP TRIGGER "TIDENTITY_DynamicTable"';
	EXCEPTION
		WHEN OTHERS THEN
			IF SQLCODE != -4080 THEN
				RAISE;
			END IF;
	END;
	BEGIN
		EXECUTE IMMEDIATE 'DROP SEQUENCE "SIDENTITY_DynamicTable"';
	EXCEPTION
		WHEN OTHERS THEN
			IF SQLCODE != -2289 THEN
				RAISE;
			END IF;
	END;
	BEGIN
		EXECUTE IMMEDIATE 'DROP TABLE "DynamicTable"';
	EXCEPTION
		WHEN OTHERS THEN
			IF SQLCODE != -942 THEN
				RAISE;
			END IF;
	END;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "DynamicTable"
		(
			ID               Int  NOT NULL,
			"Not Identifier" Int  NOT NULL,
			"Some Value"     Int  NOT NULL,

			CONSTRAINT "PK_DynamicTable" PRIMARY KEY (ID)
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

CREATE SEQUENCE "SIDENTITY_DynamicTable"

BeforeExecute
-- Oracle.11.Managed Oracle11

CREATE OR REPLACE TRIGGER "TIDENTITY_DynamicTable"
BEFORE INSERT ON "DynamicTable" FOR EACH ROW
BEGIN
	SELECT "SIDENTITY_DynamicTable".NEXTVAL INTO :NEW.ID FROM dual;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @NotIdentifier Int32
SET     @NotIdentifier = 77
DECLARE @Value_1 Int32
SET     @Value_1 = 5

INSERT INTO "DynamicTable"
(
	"Not Identifier",
	"Some Value"
)
VALUES
(
	:NotIdentifier,
	:Value_1
)

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @NotIdentifier Int32
SET     @NotIdentifier = 77
DECLARE @Value_1 Int32
SET     @Value_1 = 5

INSERT INTO "DynamicTable"
(
	"Not Identifier",
	"Some Value"
)
VALUES
(
	:NotIdentifier,
	:Value_1
)

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t1."Not Identifier",
	Count(*),
	Sum(t1."Some Value")
FROM
	"DynamicTable" t1
GROUP BY
	t1."Not Identifier"

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	BEGIN
		EXECUTE IMMEDIATE 'DROP TRIGGER "TIDENTITY_DynamicTable"';
	EXCEPTION
		WHEN OTHERS THEN
			IF SQLCODE != -4080 THEN
				RAISE;
			END IF;
	END;
	BEGIN
		EXECUTE IMMEDIATE 'DROP SEQUENCE "SIDENTITY_DynamicTable"';
	EXCEPTION
		WHEN OTHERS THEN
			IF SQLCODE != -2289 THEN
				RAISE;
			END IF;
	END;
	BEGIN
		EXECUTE IMMEDIATE 'DROP TABLE "DynamicTable"';
	EXCEPTION
		WHEN OTHERS THEN
			IF SQLCODE != -942 THEN
				RAISE;
			END IF;
	END;
END;

