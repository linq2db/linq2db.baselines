BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE "CustomerBase"
(
	"Id"           Int           NOT NULL,
	"ClientType"   VarChar(6)    NOT NULL,
	"Name"         VarChar(255)      NULL,
	"ContactEmail" VarChar(255)      NULL,
	"Enabled"      Char(1)           NULL,

	CONSTRAINT "PK_CustomerBase" PRIMARY KEY ("Id")
)

BeforeExecute
-- Oracle.Managed Oracle12

CREATE SEQUENCE "SIDENTITY_CustomerBase"

BeforeExecute
-- Oracle.Managed Oracle12

CREATE OR REPLACE TRIGGER "TIDENTITY_CustomerBase"
BEFORE INSERT ON "CustomerBase" FOR EACH ROW
BEGIN
	SELECT "SIDENTITY_CustomerBase".NEXTVAL INTO :NEW."Id" FROM dual;
END;

BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	cb."Id",
	cb."Name",
	cb."ContactEmail",
	Nvl(cb."Enabled", 0)
FROM
	"CustomerBase" cb
WHERE
	cb."ClientType" = 'Client'

BeforeExecute
-- Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TRIGGER "TIDENTITY_CustomerBase"';
	EXECUTE IMMEDIATE 'DROP SEQUENCE "SIDENTITY_CustomerBase"';
	EXECUTE IMMEDIATE 'DROP TABLE "CustomerBase"';
END;

