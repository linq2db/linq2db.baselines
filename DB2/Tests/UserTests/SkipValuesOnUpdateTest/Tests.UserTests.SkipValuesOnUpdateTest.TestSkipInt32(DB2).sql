BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Name VarChar(5) -- String
SET     @Name = 'Smith'
DECLARE @Age Integer(4) -- Int32
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
-- DB2 DB2.LUW DB2LUW

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
-- DB2 DB2.LUW DB2LUW
DECLARE @Name VarChar(6) -- String
SET     @Name = 'Franki'
DECLARE @Age Integer(4) -- Int32
SET     @Age = 15
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1

UPDATE
	"PR_1598_Update_Table" "t1"
SET
	"Name" = @Name,
	"Age" = @Age
WHERE
	"t1"."Id" = @Id

BeforeExecute
-- DB2 DB2.LUW DB2LUW

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
-- DB2 DB2.LUW DB2LUW
DECLARE @Name VarChar(4) -- String
SET     @Name = 'Jack'
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1

UPDATE
	"PR_1598_Update_Table" "t1"
SET
	"Name" = @Name
WHERE
	"t1"."Id" = @Id

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t"."Id",
	"t"."Name",
	"t"."Age"
FROM
	"PR_1598_Update_Table" "t"
WHERE
	"t"."Id" = 1
FETCH NEXT 1 ROWS ONLY

