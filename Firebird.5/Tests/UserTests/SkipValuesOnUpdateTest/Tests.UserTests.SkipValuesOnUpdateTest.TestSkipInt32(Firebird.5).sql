BeforeExecute
-- Firebird.5 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name VarChar(5) -- String
SET     @Name = 'Smith'
DECLARE @Age Integer -- Int32
SET     @Age = 2

INSERT INTO "PR_1598_Update_Table"
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
-- Firebird.5 Firebird4

SELECT
	"t"."Id",
	"t"."Name",
	"t"."Age"
FROM
	"PR_1598_Update_Table" "t"
WHERE
	"t"."Id" = 1
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @Name VarChar(6) -- String
SET     @Name = 'Franki'
DECLARE @Age Integer -- Int32
SET     @Age = 15
DECLARE @Id Integer -- Int32
SET     @Id = 1

UPDATE
	"PR_1598_Update_Table" "t1"
SET
	"Name" = CAST(@Name AS VARCHAR(6)),
	"Age" = CAST(@Age AS Int)
WHERE
	"t1"."Id" = @Id

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"t"."Id",
	"t"."Name",
	"t"."Age"
FROM
	"PR_1598_Update_Table" "t"
WHERE
	"t"."Id" = 1
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @Name VarChar(4) -- String
SET     @Name = 'Jack'
DECLARE @Id Integer -- Int32
SET     @Id = 1

UPDATE
	"PR_1598_Update_Table" "t1"
SET
	"Name" = CAST(@Name AS VARCHAR(4))
WHERE
	"t1"."Id" = @Id

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"t"."Id",
	"t"."Name",
	"t"."Age"
FROM
	"PR_1598_Update_Table" "t"
WHERE
	"t"."Id" = 1
FETCH NEXT 1 ROWS ONLY

