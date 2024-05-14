﻿BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	BEGIN
		EXECUTE IMMEDIATE 'DROP TRIGGER "TIDENTITY_TestIdTrun"';
	EXCEPTION
		WHEN OTHERS THEN
			IF SQLCODE != -4080 THEN
				RAISE;
			END IF;
	END;
	BEGIN
		EXECUTE IMMEDIATE 'DROP SEQUENCE "SIDENTITY_TestIdTrun"';
	EXCEPTION
		WHEN OTHERS THEN
			IF SQLCODE != -2289 THEN
				RAISE;
			END IF;
	END;
	BEGIN
		EXECUTE IMMEDIATE 'DROP TABLE "TestIdTrun"';
	EXCEPTION
		WHEN OTHERS THEN
			IF SQLCODE != -942 THEN
				RAISE;
			END IF;
	END;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

CREATE TABLE "TestIdTrun"
(
	ID       Int      NOT NULL,
	"Field1" Decimal  NOT NULL,

	CONSTRAINT "PK_TestIdTrun" PRIMARY KEY (ID)
)

BeforeExecute
-- Oracle.11.Managed Oracle11

CREATE SEQUENCE "SIDENTITY_TestIdTrun"

BeforeExecute
-- Oracle.11.Managed Oracle11

CREATE OR REPLACE TRIGGER "TIDENTITY_TestIdTrun"
BEFORE INSERT ON "TestIdTrun" FOR EACH ROW
BEGIN
	SELECT "SIDENTITY_TestIdTrun".NEXTVAL INTO :NEW.ID FROM dual;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

INSERT INTO "TestIdTrun"
(
	"Field1"
)
VALUES
(
	1
)

BeforeExecute
-- Oracle.11.Managed Oracle11

INSERT INTO "TestIdTrun"
(
	"Field1"
)
VALUES
(
	1
)

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @skip Int32
SET     @skip = 1

SELECT
	t3.ID,
	t3."Field1"
FROM
	(
		SELECT
			t2.ID,
			t2."Field1",
			ROWNUM as RN
		FROM
			(
				SELECT
					t1.ID,
					t1."Field1"
				FROM
					"TestIdTrun" t1
				ORDER BY
					t1.ID
			) t2
		WHERE
			ROWNUM <= (:skip + 2)
	) t3
WHERE
	t3.RN > :skip

BeforeExecute
-- Oracle.11.Managed Oracle11

TRUNCATE TABLE "TestIdTrun"

BeforeExecute
-- Oracle.11.Managed Oracle11

DECLARE
	l_value number;
BEGIN
	-- Select the next value of the sequence
	EXECUTE IMMEDIATE 'SELECT "SIDENTITY_TestIdTrun".NEXTVAL FROM dual' INTO l_value;

	-- Set a negative increment for the sequence, with value = the current value of the sequence
	EXECUTE IMMEDIATE 'ALTER SEQUENCE "SIDENTITY_TestIdTrun" INCREMENT BY -' || l_value || ' MINVALUE 0';

	-- Select once from the sequence, to take its current value back to 0
	EXECUTE IMMEDIATE 'select "SIDENTITY_TestIdTrun".NEXTVAL FROM dual' INTO l_value;

	-- Set the increment back to 1
	EXECUTE IMMEDIATE 'ALTER SEQUENCE "SIDENTITY_TestIdTrun" INCREMENT BY 1 MINVALUE 0';
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

INSERT INTO "TestIdTrun"
(
	"Field1"
)
VALUES
(
	1
)

BeforeExecute
-- Oracle.11.Managed Oracle11

INSERT INTO "TestIdTrun"
(
	"Field1"
)
VALUES
(
	1
)

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @skip Int32
SET     @skip = 1

SELECT
	t3.ID,
	t3."Field1"
FROM
	(
		SELECT
			t2.ID,
			t2."Field1",
			ROWNUM as RN
		FROM
			(
				SELECT
					t1.ID,
					t1."Field1"
				FROM
					"TestIdTrun" t1
				ORDER BY
					t1.ID
			) t2
		WHERE
			ROWNUM <= (:skip + 2)
	) t3
WHERE
	t3.RN > :skip

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TRIGGER "TIDENTITY_TestIdTrun"';
	EXECUTE IMMEDIATE 'DROP SEQUENCE "SIDENTITY_TestIdTrun"';
	EXECUTE IMMEDIATE 'DROP TABLE "TestIdTrun"';
END;

