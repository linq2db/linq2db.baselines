BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "UserStruct"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "UserStruct"
		(
			"city"            VarChar(255)     NULL,
			"user_name"       VarChar(255)     NULL,
			"street"          VarChar(255)     NULL,
			"building_number" Int          NOT NULL
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

INSERT ALL
	INTO "UserStruct" ("city", "user_name", "street", "building_number") VALUES ('Springwood','Freddy','Elm Street',13)
SELECT * FROM dual

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT DISTINCT
	u."user_name" as "Name",
	u."city" as "City",
	u."street" as "Street",
	u."building_number" as "Building"
FROM
	"UserStruct" u
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "UserStruct"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

