BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "UserStruct"';
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
-- Oracle.11.Managed Oracle11

INSERT ALL
	INTO "UserStruct" ("city", "user_name", "street", "building_number") VALUES ('Springwood','Freddy','Elm Street',13)
SELECT * FROM dual

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	u."user_name",
	u."city",
	u."street",
	u."building_number"
FROM
	"UserStruct" u
WHERE
	u."city" = 'Springwood' AND
	u."street" = 'Elm Street' AND
	u."building_number" = 13 AND
	ROWNUM <= 2

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "UserStruct"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

