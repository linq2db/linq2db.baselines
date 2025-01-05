BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4135Table')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4135Table"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4135Table')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Issue4135Table"
			(
				"Id"          Int                                    NOT NULL,
				"Name"        VarChar(255) CHARACTER SET UNICODE_FSS,
				"NeedsUpdate" BOOLEAN                                NOT NULL,

				CONSTRAINT "PK_Issue4135Table" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name VarChar(5) -- String
SET     @Name = 'name1'
DECLARE @NeedsUpdate Boolean
SET     @NeedsUpdate = TRUE

INSERT INTO "Issue4135Table"
(
	"Id",
	"Name",
	"NeedsUpdate"
)
VALUES
(
	@Id,
	@Name,
	@NeedsUpdate
)

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Name VarChar(5) -- String
SET     @Name = 'name2'
DECLARE @NeedsUpdate Boolean
SET     @NeedsUpdate = FALSE

INSERT INTO "Issue4135Table"
(
	"Id",
	"Name",
	"NeedsUpdate"
)
VALUES
(
	@Id,
	@Name,
	@NeedsUpdate
)

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @take Integer -- Int32
SET     @take = 4

UPDATE
	"Issue4135Table" "e"
SET
	"NeedsUpdate" = FALSE
WHERE
	"e"."NeedsUpdate"
ORDER BY
	"e"."Id"
ROWS @take
RETURNING
	OLD."Id",
	OLD."Name",
	OLD."NeedsUpdate"

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue4135Table')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue4135Table"';
END

