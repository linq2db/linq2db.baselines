BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4460Table')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4460Table"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4460Table')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Issue4460Table"
			(
				"Id"      Int                                    NOT NULL,
				"Code"    VarChar(255) CHARACTER SET UNICODE_FSS,
				"Name"    VarChar(255) CHARACTER SET UNICODE_FSS,
				"Surname" VarChar(255) CHARACTER SET UNICODE_FSS
			)
		';
END

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Code VarChar(10) -- String
SET     @Code = 'GrandChild'
DECLARE @Name VarChar(3) -- String
SET     @Name = 'Tom'
DECLARE @Surname VarChar(5) -- String
SET     @Surname = 'Black'

INSERT INTO "Issue4460Table"
(
	"Id",
	"Code",
	"Name",
	"Surname"
)
VALUES
(
	@Id,
	@Code,
	@Name,
	@Surname
)

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"t1"."Code",
	"t1"."Id",
	"t1"."Name",
	"t1"."Surname"
FROM
	"Issue4460Table" "t1"
WHERE
	"t1"."Code" = 'GrandChild'

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4460Table')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4460Table"';
END

