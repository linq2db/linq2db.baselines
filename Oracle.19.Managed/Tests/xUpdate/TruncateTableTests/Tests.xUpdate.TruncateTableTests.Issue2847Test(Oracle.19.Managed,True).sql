-- Oracle.19.Managed Oracle.Managed Oracle12
INSERT INTO "TestIdTrun"
(
	"Field1"
)
VALUES
(
	1
)

-- Oracle.19.Managed Oracle.Managed Oracle12
DROP SEQUENCE "SIDENTITY_TestIdTrun"

-- Oracle.19.Managed Oracle.Managed Oracle12
TRUNCATE TABLE "TestIdTrun"

-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE
	l_value number;
BEGIN
	EXECUTE IMMEDIATE 'SELECT "SIDENTITY_TestIdTrun".NEXTVAL FROM dual' INTO l_value;
	EXECUTE IMMEDIATE 'ALTER SEQUENCE "SIDENTITY_TestIdTrun" INCREMENT BY -' || l_value || ' MINVALUE 0';
	EXECUTE IMMEDIATE 'SELECT "SIDENTITY_TestIdTrun".NEXTVAL FROM dual' INTO l_value;
	EXECUTE IMMEDIATE 'ALTER SEQUENCE "SIDENTITY_TestIdTrun" INCREMENT BY 1 MINVALUE 0';
END;

