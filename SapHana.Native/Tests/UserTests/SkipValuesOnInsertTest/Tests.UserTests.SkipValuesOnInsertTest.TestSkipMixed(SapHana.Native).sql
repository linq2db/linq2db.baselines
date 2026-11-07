-- SapHana.Native SapHana
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(5) -- String
SET     @Name = 'Jason'
DECLARE @Age Integer -- Int32
SET     @Age = 20

INSERT INTO "PR_1598_Mixed_Table"
(
	"Id",
	"Name",
	"Age"
)
VALUES
(
	:"Id",
	:"Name",
	:"Age"
)

-- SapHana.Native SapHana
SELECT
	"t"."Id",
	"t"."Name",
	"t"."Age"
FROM
	"PR_1598_Mixed_Table" "t"
WHERE
	"t"."Id" = 1
LIMIT 1

-- SapHana.Native SapHana
DECLARE @Age Integer -- Int32
SET     @Age = 20
DECLARE @Id Integer -- Int32
SET     @Id = 1

UPDATE
	"PR_1598_Mixed_Table" "t1"
SET
	"Age" = :"Age"
WHERE
	"t1"."Id" = :"Id"

-- SapHana.Native SapHana
SELECT
	"t"."Id",
	"t"."Name",
	"t"."Age"
FROM
	"PR_1598_Mixed_Table" "t"
WHERE
	"t"."Id" = 1
LIMIT 1

-- SapHana.Native SapHana
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Age Integer -- Int32
SET     @Age = 25

INSERT INTO "PR_1598_Mixed_Table"
(
	"Id",
	"Age"
)
VALUES
(
	:"Id",
	:"Age"
)

-- SapHana.Native SapHana
SELECT
	"t"."Id",
	"t"."Name",
	"t"."Age"
FROM
	"PR_1598_Mixed_Table" "t"
WHERE
	"t"."Id" = 2
LIMIT 1

-- SapHana.Native SapHana
DECLARE @Name NVarChar(5) -- String
SET     @Name = 'Jessy'
DECLARE @Age Integer -- Int32
SET     @Age = 25
DECLARE @Id Integer -- Int32
SET     @Id = 2

UPDATE
	"PR_1598_Mixed_Table" "t1"
SET
	"Name" = :"Name",
	"Age" = :"Age"
WHERE
	"t1"."Id" = :"Id"

-- SapHana.Native SapHana
SELECT
	"t"."Id",
	"t"."Name",
	"t"."Age"
FROM
	"PR_1598_Mixed_Table" "t"
WHERE
	"t"."Id" = 2
LIMIT 1

