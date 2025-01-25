BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Authors')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Authors"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Authors')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Authors"
			(
				"Id"   Int                                    NOT NULL,
				"Name" VarChar(100) CHARACTER SET UNICODE_FSS NOT NULL,

				CONSTRAINT "PK_Authors" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Books')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Books"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Books')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Books"
			(
				"Id"       Int                                    NOT NULL,
				"AuthorId" Int                                    NOT NULL,
				"Title"    VarChar(100) CHARACTER SET UNICODE_FSS NOT NULL,

				CONSTRAINT "PK_Books" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"author"."Id",
	"author"."Name"
FROM
	"Authors" "author"
		INNER JOIN "Books" "book" ON "book"."AuthorId" = "author"."Id"

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Books')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Books"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Authors')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Authors"';
END

