BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE "User"
(
	"city"            VarChar(255)     NULL,
	"user_name"       VarChar(255)     NULL,
	"street"          VarChar(255)     NULL,
	"building_number" Int          NOT NULL
)

BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	u."city"
FROM
	"User" u

BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	u."street"
FROM
	"User" u

BeforeExecute
-- Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "User"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

