﻿BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'PR_1598_Insert_Enum_Table')) THEN
		EXECUTE STATEMENT 'DROP TABLE "PR_1598_Insert_Enum_Table"';
END

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'PR_1598_Insert_Enum_Table')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "PR_1598_Insert_Enum_Table"
			(
				"Id"     Int                                    NOT NULL,
				"Name"   VarChar(255) CHARACTER SET UNICODE_FSS,
				"Age"    Int,
				"Gender" VarChar(6) CHARACTER SET UNICODE_FSS,

				CONSTRAINT "PK_PR_1598_Insert_Enum_Table" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird3 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name VarChar(3) -- String
SET     @Name = 'Max'
DECLARE @Age Integer -- Int32
SET     @Age = 20
DECLARE @Gender VarChar(4) -- String
SET     @Gender = 'Male'

INSERT INTO "PR_1598_Insert_Enum_Table"
(
	"Id",
	"Name",
	"Age",
	"Gender"
)
VALUES
(
	CAST(@Id AS Int),
	CAST(@Name AS VARCHAR(3)),
	CAST(@Age AS Int),
	CAST(@Gender AS VARCHAR(4))
)

BeforeExecute
-- Firebird3 Firebird

SELECT FIRST 1
	"t"."Id",
	"t"."Name",
	"t"."Age",
	"t"."Gender"
FROM
	"PR_1598_Insert_Enum_Table" "t"
WHERE
	"t"."Id" = 1

BeforeExecute
-- Firebird3 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Name VarChar(5) -- String
SET     @Name = 'Jenny'
DECLARE @Age Integer -- Int32
SET     @Age = 25

INSERT INTO "PR_1598_Insert_Enum_Table"
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
-- Firebird3 Firebird

SELECT FIRST 1
	"t"."Id",
	"t"."Name",
	"t"."Age",
	"t"."Gender"
FROM
	"PR_1598_Insert_Enum_Table" "t"
WHERE
	"t"."Id" = 2

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'PR_1598_Insert_Enum_Table')) THEN
		EXECUTE STATEMENT 'DROP TABLE "PR_1598_Insert_Enum_Table"';
END

