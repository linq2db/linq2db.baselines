BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name VarChar(5) -- String
SET     @Name = 'Smith'

INSERT INTO "PR_1598_Insert_Table"
(
	"Id",
	"Name"
)
VALUES
(
	@Id,
	@Name
)

BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT FIRST 1
	"t"."Id",
	"t"."Name",
	"t"."Age"
FROM
	"PR_1598_Insert_Table" "t"
WHERE
	"t"."Id" = 1

BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Name VarChar(5) -- String
SET     @Name = 'Tommy'

INSERT INTO "PR_1598_Insert_Table"
(
	"Id",
	"Name"
)
VALUES
(
	@Id,
	@Name
)

BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT FIRST 1
	"t"."Id",
	"t"."Name",
	"t"."Age"
FROM
	"PR_1598_Insert_Table" "t"
WHERE
	"t"."Id" = 2

