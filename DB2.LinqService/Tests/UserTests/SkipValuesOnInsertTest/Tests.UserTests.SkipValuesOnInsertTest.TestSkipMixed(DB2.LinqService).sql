BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Name VarChar(5) -- String
SET     @Name = 'Jason'
DECLARE @Age Integer(4) -- Int32
SET     @Age = 20

INSERT INTO "PR_1598_Mixed_Table"
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
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"t"."Id",
	"t"."Name",
	"t"."Age"
FROM
	"PR_1598_Mixed_Table" "t"
WHERE
	"t"."Id" = 1
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
DECLARE @Age Integer(4) -- Int32
SET     @Age = 20
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1

UPDATE
	"PR_1598_Mixed_Table" "t1"
SET
	"Age" = @Age
WHERE
	"t1"."Id" = @Id

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"t"."Id",
	"t"."Name",
	"t"."Age"
FROM
	"PR_1598_Mixed_Table" "t"
WHERE
	"t"."Id" = 1
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @Age Integer(4) -- Int32
SET     @Age = 25

INSERT INTO "PR_1598_Mixed_Table"
(
	"Id",
	"Age"
)
VALUES
(
	@Id,
	@Age
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"t"."Id",
	"t"."Name",
	"t"."Age"
FROM
	"PR_1598_Mixed_Table" "t"
WHERE
	"t"."Id" = 2
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
DECLARE @Name VarChar(5) -- String
SET     @Name = 'Jessy'
DECLARE @Age Integer(4) -- Int32
SET     @Age = 25
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2

UPDATE
	"PR_1598_Mixed_Table" "t1"
SET
	"Name" = @Name,
	"Age" = @Age
WHERE
	"t1"."Id" = @Id

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"t"."Id",
	"t"."Name",
	"t"."Age"
FROM
	"PR_1598_Mixed_Table" "t"
WHERE
	"t"."Id" = 2
FETCH NEXT 1 ROWS ONLY

