BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	BEGIN
		EXECUTE IMMEDIATE 'DROP TRIGGER "TIDENTITY_test_temp"';
	EXCEPTION
		WHEN OTHERS THEN
			IF SQLCODE != -4080 THEN
				RAISE;
			END IF;
	END;
	BEGIN
		EXECUTE IMMEDIATE 'DROP SEQUENCE "SIDENTITY_test_temp"';
	EXCEPTION
		WHEN OTHERS THEN
			IF SQLCODE != -2289 THEN
				RAISE;
			END IF;
	END;
	BEGIN
		EXECUTE IMMEDIATE 'DROP TABLE "test_temp"';
	EXCEPTION
		WHEN OTHERS THEN
			IF SQLCODE != -942 THEN
				RAISE;
			END IF;
	END;
END;

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "test_temp"
		(
			ID       Int              NOT NULL,
			"Field1" Decimal(28, 10)  NOT NULL,

			CONSTRAINT "PK_test_temp" PRIMARY KEY (ID)
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

CREATE SEQUENCE "SIDENTITY_test_temp"

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

CREATE OR REPLACE TRIGGER "TIDENTITY_test_temp"
BEFORE INSERT ON "test_temp" FOR EACH ROW
BEGIN
	SELECT "SIDENTITY_test_temp".NEXTVAL INTO :NEW.ID FROM dual;
END;

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

TRUNCATE TABLE "test_temp"

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

INSERT INTO "test_temp"
(
	"Field1"
)
VALUES
(
	1
)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

INSERT INTO "test_temp"
(
	"Field1"
)
VALUES
(
	1
)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @skip Int32
SET     @skip = 1

SELECT
	t1.ID,
	t1."Field1"
FROM
	"test_temp" t1
ORDER BY
	t1.ID
OFFSET :skip ROWS FETCH NEXT 2 ROWS ONLY 

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

TRUNCATE TABLE "test_temp"

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

INSERT INTO "test_temp"
(
	"Field1"
)
VALUES
(
	1
)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

INSERT INTO "test_temp"
(
	"Field1"
)
VALUES
(
	1
)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @skip Int32
SET     @skip = 1

SELECT
	t1.ID,
	t1."Field1"
FROM
	"test_temp" t1
ORDER BY
	t1.ID
OFFSET :skip ROWS FETCH NEXT 2 ROWS ONLY 

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	BEGIN
		EXECUTE IMMEDIATE 'DROP TRIGGER "TIDENTITY_test_temp"';
	EXCEPTION
		WHEN OTHERS THEN
			IF SQLCODE != -4080 THEN
				RAISE;
			END IF;
	END;
	BEGIN
		EXECUTE IMMEDIATE 'DROP SEQUENCE "SIDENTITY_test_temp"';
	EXCEPTION
		WHEN OTHERS THEN
			IF SQLCODE != -2289 THEN
				RAISE;
			END IF;
	END;
	BEGIN
		EXECUTE IMMEDIATE 'DROP TABLE "test_temp"';
	EXCEPTION
		WHEN OTHERS THEN
			IF SQLCODE != -942 THEN
				RAISE;
			END IF;
	END;
END;

