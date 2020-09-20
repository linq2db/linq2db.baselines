BeforeExecute
-- Oracle.Managed Oracle12

SELECT user FROM dual

BeforeExecute
-- Oracle.Managed Oracle12

GRANT CREATE ANY TRIGGER TO SYSTEM

BeforeExecute
-- Oracle.Managed Oracle12

GRANT CREATE ANY SEQUENCE TO SYSTEM

BeforeExecute
-- Oracle.Managed Oracle12

GRANT DROP ANY TRIGGER TO SYSTEM

BeforeExecute
-- Oracle.Managed Oracle12

GRANT DROP ANY SEQUENCE TO SYSTEM

BeforeExecute
-- Oracle.Managed Oracle12

DROP USER C##Issue723Schema CASCADE

BeforeExecute
-- Oracle.Managed Oracle12

CREATE USER C##Issue723Schema IDENTIFIED BY password

BeforeExecute
-- Oracle.Managed Oracle12

SELECT default_tablespace FROM sys.dba_users WHERE username = 'C##ISSUE723SCHEMA'

BeforeExecute
-- Oracle.Managed Oracle12

ALTER USER C##Issue723Schema quota unlimited on USERS

BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE C##Issue723Schema.Issue723Table
(
	Id          Int           NOT NULL,
	StringValue VarChar(255)      NULL,

	CONSTRAINT PK_Issue723Table PRIMARY KEY (Id)
)

BeforeExecute
-- Oracle.Managed Oracle12

CREATE SEQUENCE C##Issue723Schema.SIDENTITY_Issue723Table

BeforeExecute
-- Oracle.Managed Oracle12

CREATE OR REPLACE TRIGGER C##Issue723Schema.TIDENTITY_Issue723Table
BEFORE INSERT ON C##Issue723Schema.Issue723Table FOR EACH ROW
BEGIN
	SELECT C##Issue723Schema.SIDENTITY_Issue723Table.NEXTVAL INTO :NEW.Id FROM dual;
END;

BeforeExecute
-- Oracle.Managed Oracle12
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
-- Oracle.Managed Oracle12
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
-- Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TRIGGER C##Issue723Schema.TIDENTITY_Issue723Table';
	EXECUTE IMMEDIATE 'DROP SEQUENCE C##Issue723Schema.SIDENTITY_Issue723Table';
	EXECUTE IMMEDIATE 'DROP TABLE C##Issue723Schema.Issue723Table';
END;

BeforeExecute
-- Oracle.Managed Oracle12

DROP USER C##Issue723Schema CASCADE

