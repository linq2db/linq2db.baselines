BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE DynamicTable
(
	ID               Int  NOT NULL,
	"Not Identifier" Int  NOT NULL,
	"Some Value"     Int  NOT NULL,

	CONSTRAINT PK_DynamicTable PRIMARY KEY (ID)
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE SEQUENCE SIDENTITY_DynamicTable

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE OR REPLACE TRIGGER TIDENTITY_DynamicTable
BEFORE INSERT ON DynamicTable FOR EACH ROW
BEGIN
	SELECT SIDENTITY_DynamicTable.NEXTVAL INTO :NEW.ID FROM dual;
END;

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

INSERT ALL
	INTO DynamicTable ("Not Identifier", "Some Value") VALUES (77,0)
SELECT * FROM dual

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT 
	d."Not Identifier"
FROM
	DynamicTable d

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TRIGGER TIDENTITY_DynamicTable';
	EXECUTE IMMEDIATE 'DROP SEQUENCE SIDENTITY_DynamicTable';
	EXECUTE IMMEDIATE 'DROP TABLE DynamicTable';
END;

