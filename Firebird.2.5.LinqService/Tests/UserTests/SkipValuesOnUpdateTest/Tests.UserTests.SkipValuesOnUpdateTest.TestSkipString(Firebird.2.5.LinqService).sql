BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name VarChar(6) -- String
SET     @Name = 'Manuel'
DECLARE @Age Integer -- Int32
SET     @Age = 14

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
-- Firebird.2.5 Firebird (asynchronously)

SELECT FIRST 1
	"t"."Id",
	"t"."Name",
	"t"."Age"
FROM
	"PR_1598_Update_Table" "t"
WHERE
	"t"."Id" = 1

BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)
DECLARE @Name VarChar(5) -- String
SET     @Name = 'Jacob'
DECLARE @Age Integer -- Int32
SET     @Age = 15
DECLARE @Id Integer -- Int32
SET     @Id = 1

UPDATE
	"PR_1598_Update_Table" "t1"
SET
	"Name" = CAST(@Name AS VARCHAR(5)),
	"Age" = CAST(@Age AS Int)
WHERE
	"t1"."Id" = @Id

BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT FIRST 1
	"t"."Id",
	"t"."Name",
	"t"."Age"
FROM
	"PR_1598_Update_Table" "t"
WHERE
	"t"."Id" = 1

BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)
DECLARE @Age Integer -- Int32
SET     @Age = 22
DECLARE @Id Integer -- Int32
SET     @Id = 1

UPDATE
	"PR_1598_Update_Table" "t1"
SET
	"Age" = CAST(@Age AS Int)
WHERE
	"t1"."Id" = @Id

BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT FIRST 1
	"t"."Id",
	"t"."Name",
	"t"."Age"
FROM
	"PR_1598_Update_Table" "t"
WHERE
	"t"."Id" = 1

