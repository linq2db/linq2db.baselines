BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT user FROM dual

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

GRANT CREATE ANY TRIGGER TO SYSTEM

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

GRANT CREATE ANY SEQUENCE TO SYSTEM

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

GRANT DROP ANY TRIGGER TO SYSTEM

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

GRANT DROP ANY SEQUENCE TO SYSTEM

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DROP USER C##Issue723Schema CASCADE

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE USER C##Issue723Schema IDENTIFIED BY password

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT default_tablespace FROM sys.dba_users WHERE username = 'C##ISSUE723SCHEMA'

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

ALTER USER C##Issue723Schema quota unlimited on SYSTEM

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE C##Issue723Schema.Issue723Table
(
	Id          Int           NOT NULL,
	StringValue VarChar(255)      NULL,

	CONSTRAINT PK_Issue723Table PRIMARY KEY (Id)
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE SEQUENCE C##Issue723Schema.SIDENTITY_Issue723Table

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE OR REPLACE TRIGGER C##Issue723Schema.TIDENTITY_Issue723Table
BEFORE INSERT ON C##Issue723Schema.Issue723Table FOR EACH ROW
BEGIN
	SELECT C##Issue723Schema.SIDENTITY_Issue723Table.NEXTVAL INTO :NEW.Id FROM dual;
END;

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @StringValue Varchar2(1) -- String
SET     @StringValue = '1'
DECLARE @IDENTITY_PARAMETER Decimal
SET     @IDENTITY_PARAMETER = NULL

INSERT INTO C##Issue723Schema.Issue723Table
(
	StringValue
)
VALUES
(
	:StringValue
)
RETURNING 
	Id INTO :IDENTITY_PARAMETER

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @StringValue Varchar2(1) -- String
SET     @StringValue = '2'
DECLARE @IDENTITY_PARAMETER Decimal
SET     @IDENTITY_PARAMETER = NULL

INSERT INTO C##Issue723Schema.Issue723Table
(
	StringValue
)
VALUES
(
	:StringValue
)
RETURNING 
	Id INTO :IDENTITY_PARAMETER

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TRIGGER C##Issue723Schema.TIDENTITY_Issue723Table';
	EXECUTE IMMEDIATE 'DROP SEQUENCE C##Issue723Schema.SIDENTITY_Issue723Table';
	EXECUTE IMMEDIATE 'DROP TABLE C##Issue723Schema.Issue723Table';
END;

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DROP USER C##Issue723Schema CASCADE

