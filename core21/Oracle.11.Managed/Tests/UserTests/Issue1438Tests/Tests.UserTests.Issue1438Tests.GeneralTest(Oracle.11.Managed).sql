BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE "Issue1438"
(
	"Id"  Int      NOT NULL,
	"Has" Char(1)  NOT NULL,

	CONSTRAINT "PK_Issue1438" PRIMARY KEY ("Id")
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE SEQUENCE "SIDENTITY_Issue1438"

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE OR REPLACE TRIGGER "TIDENTITY_Issue1438"
BEFORE INSERT ON "Issue1438" FOR EACH ROW
BEGIN
	SELECT "SIDENTITY_Issue1438".NEXTVAL INTO :NEW."Id" FROM dual;
END;

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
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
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @id_1 Int32
SET     @id_1 = 1
DECLARE @take Int32
SET     @take = 2

SELECT
	t1."Id",
	t1."Has"
FROM
	"Issue1438" t1
WHERE
	t1."Id" = :id_1 AND ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TRIGGER "TIDENTITY_Issue1438"';
	EXECUTE IMMEDIATE 'DROP SEQUENCE "SIDENTITY_Issue1438"';
	EXECUTE IMMEDIATE 'DROP TABLE "Issue1438"';
END;

