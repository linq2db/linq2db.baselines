BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "UserStruct"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

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
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Residence_City Varchar2(10) -- String
SET     @Residence_City = 'Springwood'
DECLARE @Name Varchar2(6) -- String
SET     @Name = 'Freddy'
DECLARE @Residence_Street Varchar2(10) -- String
SET     @Residence_Street = 'Elm Street'
DECLARE @Residence_Building Int32
SET     @Residence_Building = 13

INSERT INTO "UserStruct"
(
	"city",
	"user_name",
	"street",
	"building_number"
)
VALUES
(
	:Residence_City,
	:Name,
	:Residence_Street,
	:Residence_Building
)

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT DISTINCT
	u."city" as "City",
	u."street" as "Street",
	u."building_number" as "Building"
FROM
	"UserStruct" u
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "UserStruct"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

