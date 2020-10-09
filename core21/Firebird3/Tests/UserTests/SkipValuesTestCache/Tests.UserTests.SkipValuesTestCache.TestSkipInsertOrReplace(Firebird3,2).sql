BeforeExecute
-- Firebird3 Firebird

CREATE TABLE "PR_1598_Insert_Table_Cache"
(
	"Id"   Int                                    NOT NULL,
	"Name" VarChar(255) CHARACTER SET UNICODE_FSS,
	"Age"  Int,

	CONSTRAINT "PK_PR_1598_Insert_Table_Cache" PRIMARY KEY ("Id")
)

BeforeExecute
-- Firebird3 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name VarChar(4) -- String
SET     @Name = 'John'
DECLARE @Age Integer -- Int32
SET     @Age = 2

MERGE INTO "PR_1598_Insert_Table_Cache" "t1"
USING (SELECT Cast(@Id as Int) AS "Id" FROM rdb$database) "s" ON
(
	"t1"."Id" = "s"."Id"
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"t1"."Name" = @Name,
		"t1"."Age" = @Age
WHEN NOT MATCHED THEN
	INSERT
	(
		"Id",
		"Name",
		"Age"
	)
	VALUES
	(
		Cast(@Id as Int),
		@Name,
		@Age
	)

BeforeExecute
-- Firebird3 Firebird
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT FIRST @take 
	"t"."Id", 
	"t"."Name", 
	"t"."Age"
FROM
	"PR_1598_Insert_Table_Cache" "t"
WHERE
	"t"."Id" = 1

BeforeExecute
-- Firebird3 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name VarChar(4) -- String
SET     @Name = 'John'
DECLARE @Age Integer -- Int32
SET     @Age = 2

MERGE INTO "PR_1598_Insert_Table_Cache" "t1"
USING (SELECT Cast(@Id as Int) AS "Id" FROM rdb$database) "s" ON
(
	"t1"."Id" = "s"."Id"
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"t1"."Name" = @Name,
		"t1"."Age" = @Age
WHEN NOT MATCHED THEN
	INSERT
	(
		"Id",
		"Name",
		"Age"
	)
	VALUES
	(
		Cast(@Id as Int),
		@Name,
		@Age
	)

BeforeExecute
-- Firebird3 Firebird
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT FIRST @take 
	"t"."Id", 
	"t"."Name", 
	"t"."Age"
FROM
	"PR_1598_Insert_Table_Cache" "t"
WHERE
	"t"."Id" = 1

BeforeExecute
-- Firebird3 Firebird

DROP TABLE "PR_1598_Insert_Table_Cache"

