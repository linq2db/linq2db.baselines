﻿BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'PR_1598_Update_Null_Table')) THEN
		EXECUTE STATEMENT 'DROP TABLE "PR_1598_Update_Null_Table"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'PR_1598_Update_Null_Table')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "PR_1598_Update_Null_Table"
			(
				"Id"   Int                                    NOT NULL,
				"Name" VarChar(255) CHARACTER SET UNICODE_FSS,
				"Age"  Int,

				CONSTRAINT "PK_PR_1598_Update_Null_Table" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name VarChar(5) -- String
SET     @Name = 'Tommy'
DECLARE @Age Integer -- Int32
SET     @Age = NULL

INSERT INTO "PR_1598_Update_Null_Table"
(
	"Id",
	"Name",
	"Age"
)
VALUES
(
	CAST(@Id AS Int),
	CAST(@Name AS VARCHAR(5)),
	CAST(@Age AS Int)
)

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t"."Id",
	"t"."Name",
	"t"."Age"
FROM
	"PR_1598_Update_Null_Table" "t"
WHERE
	"t"."Id" = 1
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @Name VarChar(4) -- String
SET     @Name = 'Jack'
DECLARE @Age Integer -- Int32
SET     @Age = 2
DECLARE @Id Integer -- Int32
SET     @Id = 1

UPDATE
	"PR_1598_Update_Null_Table" "t1"
SET
	"Name" = CAST(@Name AS VARCHAR(4)),
	"Age" = CAST(@Age AS Int)
WHERE
	"t1"."Id" = @Id

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t"."Id",
	"t"."Name",
	"t"."Age"
FROM
	"PR_1598_Update_Null_Table" "t"
WHERE
	"t"."Id" = 1
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @Name VarChar(6) -- String
SET     @Name = 'Franki'
DECLARE @Id Integer -- Int32
SET     @Id = 1

UPDATE
	"PR_1598_Update_Null_Table" "t1"
SET
	"Name" = CAST(@Name AS VARCHAR(6))
WHERE
	"t1"."Id" = @Id

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t"."Id",
	"t"."Name",
	"t"."Age"
FROM
	"PR_1598_Update_Null_Table" "t"
WHERE
	"t"."Id" = 1
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'PR_1598_Update_Null_Table')) THEN
		EXECUTE STATEMENT 'DROP TABLE "PR_1598_Update_Null_Table"';
END

