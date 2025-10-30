-- Oracle.18.Managed Oracle.Managed Oracle12

INSERT INTO "TestIdTrun"
(
	"Field1"
)
VALUES
(
	1
)

-- Oracle.18.Managed Oracle.Managed Oracle12

DROP SEQUENCE "SIDENTITY_TestIdTrun"

-- Oracle.18.Managed Oracle.Managed Oracle12

TRUNCATE TABLE "TestIdTrun"

-- Oracle.18.Managed Oracle.Managed Oracle12

DECLARE
	l_value number;
BEGIN
	-- Select the next value of the sequence
	EXECUTE IMMEDIATE 'SELECT "SIDENTITY_TestIdTrun".NEXTVAL FROM dual' INTO l_value;

	-- Set a negative increment for the sequence, with value = the current value of the sequence
	EXECUTE IMMEDIATE 'ALTER SEQUENCE "SIDENTITY_TestIdTrun" INCREMENT BY -' || l_value || ' MINVALUE 0';

	-- Select once from the sequence, to take its current value back to 0
	EXECUTE IMMEDIATE 'select "SIDENTITY_TestIdTrun".NEXTVAL FROM dual' INTO l_value;

	-- Set the increment back to 1
	EXECUTE IMMEDIATE 'ALTER SEQUENCE "SIDENTITY_TestIdTrun" INCREMENT BY 1 MINVALUE 0';
END;

