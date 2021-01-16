BeforeExecute
-- Firebird

CREATE TABLE "PR_1598_Insert_Table_Cache"
(
	"Id"   Int                                    NOT NULL,
	"Name" VarChar(255) CHARACTER SET UNICODE_FSS,
	"Age"  Int,

	CONSTRAINT "PK_PR_1598_Insert_Table_Cache" PRIMARY KEY ("Id")
)

BeforeExecute
-- Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name VarChar(4) -- String
SET     @Name = 'John'

MERGE INTO "PR_1598_Insert_Table_Cache" "t1"
USING (SELECT Cast(@Id as Int) AS "Id" FROM rdb$database) "s" ON
(
	"t1"."Id" = "s"."Id"
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"t1"."Name" = @Name
WHEN NOT MATCHED THEN
	INSERT
	(
		"Id",
		"Name"
	)
	VALUES
	(
		Cast(@Id as Int),
		@Name
	)

BeforeExecute
-- Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name VarChar(4) -- String
SET     @Name = 'John'

MERGE INTO "PR_1598_Insert_Table_Cache" "t1"
USING (SELECT Cast(@Id as Int) AS "Id" FROM rdb$database) "s" ON
(
	"t1"."Id" = "s"."Id"
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"t1"."Name" = @Name
WHEN NOT MATCHED THEN
	INSERT
	(
		"Id",
		"Name"
	)
	VALUES
	(
		Cast(@Id as Int),
		@Name
	)

BeforeExecute
-- Firebird

DROP TABLE "PR_1598_Insert_Table_Cache"

