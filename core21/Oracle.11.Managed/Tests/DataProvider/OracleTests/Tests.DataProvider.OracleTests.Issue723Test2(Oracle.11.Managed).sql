BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE Issue723Table
(
	Id          Int           NOT NULL,
	StringValue VarChar(255)      NULL,

	CONSTRAINT PK_Issue723Table PRIMARY KEY (Id)
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE SEQUENCE SIDENTITY_Issue723Table

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE OR REPLACE TRIGGER TIDENTITY_Issue723Table
BEFORE INSERT ON Issue723Table FOR EACH ROW
BEGIN
	SELECT SIDENTITY_Issue723Table.NEXTVAL INTO :NEW.Id FROM dual;
END;

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TRIGGER TIDENTITY_Issue723Table';
	EXECUTE IMMEDIATE 'DROP SEQUENCE SIDENTITY_Issue723Table';
	EXECUTE IMMEDIATE 'DROP TABLE Issue723Table';
END;

