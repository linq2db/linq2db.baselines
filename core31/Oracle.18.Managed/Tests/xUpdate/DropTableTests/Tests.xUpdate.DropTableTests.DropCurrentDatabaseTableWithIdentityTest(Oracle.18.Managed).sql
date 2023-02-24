BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	BEGIN
		EXECUTE IMMEDIATE 'DROP TRIGGER "TIDENTITY_DropTableTestID"';
	EXCEPTION
		WHEN OTHERS THEN
			IF SQLCODE != -4080 THEN
				RAISE;
			END IF;
	END;
	BEGIN
		EXECUTE IMMEDIATE 'DROP SEQUENCE "SIDENTITY_DropTableTestID"';
	EXCEPTION
		WHEN OTHERS THEN
			IF SQLCODE != -2289 THEN
				RAISE;
			END IF;
	END;
	BEGIN
		EXECUTE IMMEDIATE 'DROP TABLE "DropTableTestID"';
	EXCEPTION
		WHEN OTHERS THEN
			IF SQLCODE != -942 THEN
				RAISE;
			END IF;
	END;
END;

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

CREATE TABLE "DropTableTestID"
(
	ID  Int  NOT NULL,
	ID1 Int  NOT NULL,

	CONSTRAINT "PK_DropTableTestID" PRIMARY KEY (ID)
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

CREATE SEQUENCE "SIDENTITY_DropTableTestID"

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

CREATE OR REPLACE TRIGGER "TIDENTITY_DropTableTestID"
BEFORE INSERT ON "DropTableTestID" FOR EACH ROW
BEGIN
	SELECT "SIDENTITY_DropTableTestID".NEXTVAL INTO :NEW.ID FROM dual;
END;

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

INSERT INTO "DropTableTestID"
(
	ID1
)
VALUES
(
	2
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t.ID,
	t.ID1
FROM
	"DropTableTestID" t

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TRIGGER "TIDENTITY_DropTableTestID"';
	EXECUTE IMMEDIATE 'DROP SEQUENCE "SIDENTITY_DropTableTestID"';
	EXECUTE IMMEDIATE 'DROP TABLE "DropTableTestID"';
END;

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t1.ID,
	t1.ID1
FROM
	"DropTableTestID" t1

