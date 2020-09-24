BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE CustomerBase
(
	Id           Int            NOT NULL,
	ClientType   VarChar(4000)  NOT NULL,
	Name         VarChar(255)       NULL,
	ContactEmail VarChar(255)       NULL,
	Enabled      Char(1)            NULL,

	CONSTRAINT PK_CustomerBase PRIMARY KEY (Id)
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE SEQUENCE SIDENTITY_CustomerBase

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE OR REPLACE TRIGGER TIDENTITY_CustomerBase
BEFORE INSERT ON CustomerBase FOR EACH ROW
BEGIN
	SELECT SIDENTITY_CustomerBase.NEXTVAL INTO :NEW.Id FROM dual;
END;

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	cb.Id,
	cb.Name,
	cb.ContactEmail,
	Nvl(cb.Enabled, 0)
FROM
	CustomerBase cb
WHERE
	cb.ClientType = 'Client'

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TRIGGER TIDENTITY_CustomerBase';
	EXECUTE IMMEDIATE 'DROP SEQUENCE SIDENTITY_CustomerBase';
	EXECUTE IMMEDIATE 'DROP TABLE CustomerBase';
END;

