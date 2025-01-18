BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name VarChar(3) -- String
SET     @Name = 'Max'
DECLARE @Age Integer -- Int32
SET     @Age = 20
DECLARE @Gender VarChar(6) -- String
SET     @Gender = 'Female'

INSERT INTO "PR_1598_Update_Enum_Table"
(
	"Id",
	"Name",
	"Age",
	"Gender"
)
VALUES
(
	@Id,
	@Name,
	@Age,
	@Gender
)

BeforeExecute
-- Firebird.2.5 Firebird

SELECT FIRST 1
	"t"."Id",
	"t"."Name",
	"t"."Age",
	"t"."Gender"
FROM
	"PR_1598_Update_Enum_Table" "t"
WHERE
	"t"."Id" = 1

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @Name VarChar(4) -- String
SET     @Name = 'Jack'
DECLARE @Age Integer -- Int32
SET     @Age = 2
DECLARE @Gender VarChar(4) -- String
SET     @Gender = 'Male'
DECLARE @Id Integer -- Int32
SET     @Id = 1

UPDATE
	"PR_1598_Update_Enum_Table" "t1"
SET
	"Name" = CAST(@Name AS VARCHAR(4)),
	"Age" = CAST(@Age AS Int),
	"Gender" = CAST(@Gender AS VARCHAR(4))
WHERE
	"t1"."Id" = @Id

BeforeExecute
-- Firebird.2.5 Firebird

SELECT FIRST 1
	"t"."Id",
	"t"."Name",
	"t"."Age",
	"t"."Gender"
FROM
	"PR_1598_Update_Enum_Table" "t"
WHERE
	"t"."Id" = 1

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @Name VarChar(8) -- String
SET     @Name = 'Francine'
DECLARE @Age Integer -- Int32
SET     @Age = 20
DECLARE @Id Integer -- Int32
SET     @Id = 1

UPDATE
	"PR_1598_Update_Enum_Table" "t1"
SET
	"Name" = CAST(@Name AS VARCHAR(8)),
	"Age" = CAST(@Age AS Int)
WHERE
	"t1"."Id" = @Id

BeforeExecute
-- Firebird.2.5 Firebird

SELECT FIRST 1
	"t"."Id",
	"t"."Name",
	"t"."Age",
	"t"."Gender"
FROM
	"PR_1598_Update_Enum_Table" "t"
WHERE
	"t"."Id" = 1

