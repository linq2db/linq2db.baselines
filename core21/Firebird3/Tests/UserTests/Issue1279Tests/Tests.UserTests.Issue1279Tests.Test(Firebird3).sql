BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	EXECUTE STATEMENT '
		CREATE TABLE "Issue1279Table"
		(
			"Id"      Int       NOT NULL,
			"CharFld" NChar(1)  NOT NULL,

			CONSTRAINT "PK_Issue1279Table" PRIMARY KEY ("Id")
		)
	';
	EXECUTE STATEMENT '
		CREATE GENERATOR "GIDENTITY_Issue1279Table"
	';
	EXECUTE STATEMENT '
		CREATE TRIGGER "TIDENTITY_Issue1279Table" FOR "Issue1279Table"
		BEFORE INSERT POSITION 0
		AS BEGIN
			NEW."Id" = GEN_ID("GIDENTITY_Issue1279Table", 1);
		END
	';
END

BeforeExecute
-- Firebird3 Firebird
DECLARE @CharFld Char -- String
SET     @CharFld = 'P'

INSERT INTO "Issue1279Table"
(
	"CharFld"
)
VALUES
(
	@CharFld
)

BeforeExecute
-- Firebird3 Firebird
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT FIRST @take
	"t1"."Id",
	"t1"."CharFld"
FROM
	"Issue1279Table" "t1"

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_Issue1279Table"';
	EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_Issue1279Table"';
	EXECUTE STATEMENT 'DROP TABLE "Issue1279Table"';
END

