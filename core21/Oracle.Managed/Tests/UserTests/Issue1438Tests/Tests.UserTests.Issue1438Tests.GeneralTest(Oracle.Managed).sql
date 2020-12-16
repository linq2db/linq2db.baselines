BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE "Issue1438"
(
	"Id"  Int      NOT NULL,
	"Has" Char(1)  NOT NULL,

	CONSTRAINT "PK_Issue1438" PRIMARY KEY ("Id")
)

BeforeExecute
-- Oracle.Managed Oracle12

CREATE SEQUENCE "SIDENTITY_Issue1438"

BeforeExecute
-- Oracle.Managed Oracle12

CREATE OR REPLACE TRIGGER "TIDENTITY_Issue1438"
BEFORE INSERT ON "Issue1438" FOR EACH ROW
BEGIN
	SELECT "SIDENTITY_Issue1438".NEXTVAL INTO :NEW."Id" FROM dual;
END;

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @Has Int16
SET     @Has = 1
DECLARE @IDENTITY_PARAMETER Decimal
SET     @IDENTITY_PARAMETER = NULL

INSERT INTO "Issue1438"
(
	"Has"
)
VALUES
(
	:Has
)
RETURNING 
	"Id" INTO :IDENTITY_PARAMETER

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @id Int32
SET     @id = 1
DECLARE @take Int32
SET     @take = 2

SELECT
	t1."Id",
	t1."Has"
FROM
	"Issue1438" t1
WHERE
	t1."Id" = :id
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TRIGGER "TIDENTITY_Issue1438"';
	EXECUTE IMMEDIATE 'DROP SEQUENCE "SIDENTITY_Issue1438"';
	EXECUTE IMMEDIATE 'DROP TABLE "Issue1438"';
END;

