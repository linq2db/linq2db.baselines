﻿BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'PR_1598_Insert_Table_Cache')) THEN
		EXECUTE STATEMENT 'DROP TABLE "PR_1598_Insert_Table_Cache"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'PR_1598_Insert_Table_Cache')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "PR_1598_Insert_Table_Cache"
			(
				"Id"   Int                                    NOT NULL,
				"Name" VarChar(255) CHARACTER SET UNICODE_FSS,
				"Age"  Int,

				CONSTRAINT "PK_PR_1598_Insert_Table_Cache" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name VarChar(4) -- String
SET     @Name = 'John'
DECLARE @Age Integer -- Int32
SET     @Age = 2

INSERT INTO "PR_1598_Insert_Table_Cache"
(
	"Id",
	"Name",
	"Age"
)
VALUES
(
	@Id,
	@Name,
	@Age
)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	"t"."Id",
	"t"."Name",
	"t"."Age"
FROM
	"PR_1598_Insert_Table_Cache" "t"
WHERE
	"t"."Id" = 1
FETCH NEXT @take ROWS ONLY

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @Name VarChar(4) -- String
SET     @Name = 'John'
DECLARE @Age Integer -- Int32
SET     @Age = 2
DECLARE @Id Integer -- Int32
SET     @Id = 1

UPDATE
	"PR_1598_Insert_Table_Cache"
SET
	"PR_1598_Insert_Table_Cache"."Name" = @Name,
	"PR_1598_Insert_Table_Cache"."Age" = @Age
WHERE
	"PR_1598_Insert_Table_Cache"."Id" = @Id

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	"t"."Id",
	"t"."Name",
	"t"."Age"
FROM
	"PR_1598_Insert_Table_Cache" "t"
WHERE
	"t"."Id" = 1
FETCH NEXT @take ROWS ONLY

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'PR_1598_Insert_Table_Cache')) THEN
		EXECUTE STATEMENT 'DROP TABLE "PR_1598_Insert_Table_Cache"';
END

