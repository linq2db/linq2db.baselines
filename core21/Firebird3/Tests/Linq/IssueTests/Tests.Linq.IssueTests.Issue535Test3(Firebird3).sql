BeforeExecute
-- Firebird3 Firebird

CREATE TABLE "CustomerBase"
(
	"Id"           Int                                     NOT NULL,
	"ClientType"   NChar                                   NOT NULL,
	"Name"         VarChar(255) CHARACTER SET UNICODE_FSS,
	"ContactEmail" VarChar(255) CHARACTER SET UNICODE_FSS,
	"Enabled"      CHAR,

	CONSTRAINT "PK_CustomerBase" PRIMARY KEY ("Id")
)

BeforeExecute
-- Firebird3 Firebird

CREATE GENERATOR "GIDENTITY_CustomerBase"

BeforeExecute
-- Firebird3 Firebird

CREATE TRIGGER "TIDENTITY_CustomerBase" FOR "CustomerBase"
BEFORE INSERT POSITION 0
AS BEGIN
	NEW."Id" = GEN_ID("GIDENTITY_CustomerBase", 1);
END

BeforeExecute
-- Firebird3 Firebird

SELECT
	"cb"."Id",
	"cb"."Name",
	"cb"."ContactEmail",
	Coalesce("cb"."Enabled", 0)
FROM
	"CustomerBase" "cb"
WHERE
	"cb"."ClientType" = 'Client'

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_CustomerBase"';
	EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_CustomerBase"';
	EXECUTE STATEMENT 'DROP TABLE "CustomerBase"';
END

