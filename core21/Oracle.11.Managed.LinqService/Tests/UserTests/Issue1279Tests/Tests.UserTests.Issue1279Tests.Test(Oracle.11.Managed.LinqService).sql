BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE Issue1279Table
(
	Id      Int       NOT NULL,
	CharFld NChar(1)  NOT NULL,

	CONSTRAINT PK_Issue1279Table PRIMARY KEY (Id)
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE SEQUENCE SIDENTITY_Issue1279Table

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE OR REPLACE TRIGGER TIDENTITY_Issue1279Table
BEFORE INSERT ON Issue1279Table FOR EACH ROW
BEGIN
	SELECT SIDENTITY_Issue1279Table.NEXTVAL INTO :NEW.Id FROM dual;
END;

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @CharFld Char -- StringFixedLength
SET     @CharFld = 'P'

INSERT INTO Issue1279Table
(
	CharFld
)
VALUES
(
	:CharFld
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @take Int32
SET     @take = 1

SELECT 
	t1.Id, 
	t1.CharFld
FROM
	Issue1279Table t1
WHERE
	ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TRIGGER TIDENTITY_Issue1279Table';
	EXECUTE IMMEDIATE 'DROP SEQUENCE SIDENTITY_Issue1279Table';
	EXECUTE IMMEDIATE 'DROP TABLE Issue1279Table';
END;

