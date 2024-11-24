BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "User"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

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
-- Oracle.18.Managed Oracle.Managed Oracle12

INSERT ALL
	INTO "User" ("city", "user_name", "street", "building_number") VALUES ('Springwood','Freddy','Elm Street',13)
SELECT * FROM dual

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @City Varchar2(10) -- String
SET     @City = 'Springwood'
DECLARE @Street Varchar2(10) -- String
SET     @Street = 'Elm Street'
DECLARE @Building Int32
SET     @Building = 13

SELECT
	u."user_name" as "Name",
	u."city" as "City",
	u."street" as "Street",
	u."building_number" as "Building"
FROM
	"User" u
WHERE
	u."city" = :City AND u."street" = :Street AND u."building_number" = :Building
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "User"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

