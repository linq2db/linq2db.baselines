BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Books')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Books"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Books')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Books"
			(
				"Id"       Int                                    NOT NULL,
				"Title"    VarChar(255) CHARACTER SET UNICODE_FSS NOT NULL,
				"AuthorId" Int                                    NOT NULL,

				CONSTRAINT "PK_Books" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird.2.5 Firebird

INSERT INTO "Books"
(
	"Id",
	"Title",
	"AuthorId"
)
SELECT 1,CAST('Something' AS VarChar(255) CHARACTER SET UNICODE_FSS),1 FROM rdb$database UNION ALL
SELECT 2,'Book',2 FROM rdb$database UNION ALL
SELECT 3,'Boring',3 FROM rdb$database

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Authors')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Authors"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Authors')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Authors"
			(
				"Id"   Int                                    NOT NULL,
				"Name" VarChar(255) CHARACTER SET UNICODE_FSS NOT NULL,

				CONSTRAINT "PK_Authors" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird.2.5 Firebird

INSERT INTO "Authors"
(
	"Id",
	"Name"
)
SELECT 1,CAST('John' AS VarChar(255) CHARACTER SET UNICODE_FSS) FROM rdb$database UNION ALL
SELECT 2,'Steven' FROM rdb$database UNION ALL
SELECT 3,'Smith' FROM rdb$database

BeforeExecute
-- Firebird.2.5 Firebird

WITH "BooksCte" ("Book_Id", "Book_Title", "Author_Name")
AS
(
	SELECT
		"b"."Id",
		"b"."Title",
		"a_Author"."Name"
	FROM
		"Books" "b"
			INNER JOIN "Authors" "a_Author" ON "b"."AuthorId" = "a_Author"."Id"
)
SELECT
	"b_1"."Id"
FROM
	(
		SELECT
			NULL as "Name",
			"r"."Book_Title" as "Title",
			"r"."Book_Id" as "Id"
		FROM
			"BooksCte" "r"
		UNION ALL
		SELECT
			"t1"."Author_Name" as "Name",
			NULL as "Title",
			NULL as "Id"
		FROM
			"BooksCte" "t1"
	) "b_1"
WHERE
	"b_1"."Name" = 'Steven' AND "b_1"."Name" IS NOT NULL OR
	"b_1"."Title" = 'Something' AND "b_1"."Title" IS NOT NULL

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Authors')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Authors"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Books')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Books"';
END

