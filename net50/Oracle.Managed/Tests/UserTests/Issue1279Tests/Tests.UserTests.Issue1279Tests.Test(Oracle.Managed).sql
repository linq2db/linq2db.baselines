BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE "Issue1279Table"
(
	"Id"      Int       NOT NULL,
	"CharFld" NChar(1)  NOT NULL,

	CONSTRAINT "PK_Issue1279Table" PRIMARY KEY ("Id")
)

BeforeExecute
-- Oracle.Managed Oracle12

CREATE SEQUENCE "SIDENTITY_Issue1279Table"

BeforeExecute
-- Oracle.Managed Oracle12

CREATE OR REPLACE TRIGGER "TIDENTITY_Issue1279Table"
BEFORE INSERT ON "Issue1279Table" FOR EACH ROW
BEGIN
	SELECT "SIDENTITY_Issue1279Table".NEXTVAL INTO :NEW."Id" FROM dual;
END;

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @CharFld Char -- StringFixedLength
SET     @CharFld = 'P'

INSERT INTO "Issue1279Table"
(
	"CharFld"
)
VALUES
(
	:CharFld
)

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 1

SELECT
	t1."Id",
	t1."CharFld"
FROM
	"Issue1279Table" t1
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TRIGGER "TIDENTITY_Issue1279Table"';
	EXECUTE IMMEDIATE 'DROP SEQUENCE "SIDENTITY_Issue1279Table"';
	EXECUTE IMMEDIATE 'DROP TABLE "Issue1279Table"';
END;

