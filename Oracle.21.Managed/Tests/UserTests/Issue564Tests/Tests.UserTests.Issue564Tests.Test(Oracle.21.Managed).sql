BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	BEGIN
		EXECUTE IMMEDIATE 'DROP TRIGGER "TIDENTITY_Parent564"';
	EXCEPTION
		WHEN OTHERS THEN
			IF SQLCODE != -4080 THEN
				RAISE;
			END IF;
	END;
	BEGIN
		EXECUTE IMMEDIATE 'DROP SEQUENCE "SIDENTITY_Parent564"';
	EXCEPTION
		WHEN OTHERS THEN
			IF SQLCODE != -2289 THEN
				RAISE;
			END IF;
	END;
	BEGIN
		EXECUTE IMMEDIATE 'DROP TABLE "Parent564"';
	EXCEPTION
		WHEN OTHERS THEN
			IF SQLCODE != -942 THEN
				RAISE;
			END IF;
	END;
END;

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "Parent564"
		(
			"Id"          Int           NOT NULL,
			"Type"        VarChar(255)      NULL,
			"StringValue" VarChar(20)       NULL,
			"IntValue"    Int               NULL,

			CONSTRAINT "PK_Parent564" PRIMARY KEY ("Id")
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

CREATE SEQUENCE "SIDENTITY_Parent564"

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

CREATE OR REPLACE TRIGGER "TIDENTITY_Parent564"
BEFORE INSERT ON "Parent564" FOR EACH ROW
BEGIN
	SELECT "SIDENTITY_Parent564".NEXTVAL INTO :NEW."Id" FROM dual;
END;

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Type Varchar2(9) -- String
SET     @Type = 'Child564A'
DECLARE @StringValue Varchar2(9) -- String
SET     @StringValue = 'SomeValue'

INSERT INTO "Parent564"
(
	"Type",
	"StringValue"
)
VALUES
(
	:Type,
	:StringValue
)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Type Varchar2(9) -- String
SET     @Type = 'Child564B'
DECLARE @IntValue Int32
SET     @IntValue = 911

INSERT INTO "Parent564"
(
	"Type",
	"IntValue"
)
VALUES
(
	:Type,
	:IntValue
)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	COUNT(*)
FROM
	"Parent564" t1

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	BEGIN
		EXECUTE IMMEDIATE 'DROP TRIGGER "TIDENTITY_Parent564"';
	EXCEPTION
		WHEN OTHERS THEN
			IF SQLCODE != -4080 THEN
				RAISE;
			END IF;
	END;
	BEGIN
		EXECUTE IMMEDIATE 'DROP SEQUENCE "SIDENTITY_Parent564"';
	EXCEPTION
		WHEN OTHERS THEN
			IF SQLCODE != -2289 THEN
				RAISE;
			END IF;
	END;
	BEGIN
		EXECUTE IMMEDIATE 'DROP TABLE "Parent564"';
	EXCEPTION
		WHEN OTHERS THEN
			IF SQLCODE != -942 THEN
				RAISE;
			END IF;
	END;
END;

