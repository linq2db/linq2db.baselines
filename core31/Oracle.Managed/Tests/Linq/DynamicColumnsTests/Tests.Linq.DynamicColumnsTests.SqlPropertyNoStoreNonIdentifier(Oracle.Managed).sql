BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE "DynamicTable"
(
	ID               Int  NOT NULL,
	"Not Identifier" Int  NOT NULL,
	"Some Value"     Int  NOT NULL,

	CONSTRAINT "PK_DynamicTable" PRIMARY KEY (ID)
)

BeforeExecute
-- Oracle.Managed Oracle12

CREATE SEQUENCE "SIDENTITY_DynamicTable"

BeforeExecute
-- Oracle.Managed Oracle12

CREATE OR REPLACE TRIGGER "TIDENTITY_DynamicTable"
BEFORE INSERT ON "DynamicTable" FOR EACH ROW
BEGIN
	SELECT "SIDENTITY_DynamicTable".NEXTVAL INTO :NEW.ID FROM dual;
END;

BeforeExecute
-- Oracle.Managed Oracle12

INSERT ALL
	INTO "DynamicTable" ("Not Identifier", "Some Value") VALUES (77,0)
SELECT * FROM dual

BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	d."Not Identifier"
FROM
	"DynamicTable" d

BeforeExecute
-- Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TRIGGER "TIDENTITY_DynamicTable"';
	EXECUTE IMMEDIATE 'DROP SEQUENCE "SIDENTITY_DynamicTable"';
	EXECUTE IMMEDIATE 'DROP TABLE "DynamicTable"';
END;

