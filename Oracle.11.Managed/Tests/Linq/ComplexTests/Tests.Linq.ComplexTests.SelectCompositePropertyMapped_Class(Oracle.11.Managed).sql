BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "User"';
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
		CREATE TABLE "User"
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
	INTO "User" ("city", "user_name", "street", "building_number") VALUES ('Springwood','Freddy','Elm Street',13)
SELECT * FROM dual

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t1."City",
	t1."Street",
	t1."Building"
FROM
	(
		SELECT DISTINCT
			u."city" as "City",
			u."street" as "Street",
			u."building_number" as "Building"
		FROM
			"User" u
	) t1
WHERE
	ROWNUM <= 2

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "User"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

