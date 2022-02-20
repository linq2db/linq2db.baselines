BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE "User"
(
	"city"            VarChar(255)     NULL,
	"user_name"       VarChar(255)     NULL,
	"street"          VarChar(255)     NULL,
	"building_number" Int          NOT NULL
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	u."city"
FROM
	"User" u

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	u."street"
FROM
	"User" u

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "User"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

