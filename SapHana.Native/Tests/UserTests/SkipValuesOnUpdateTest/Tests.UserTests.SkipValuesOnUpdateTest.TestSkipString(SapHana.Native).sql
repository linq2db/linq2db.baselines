-- SapHana.Native SapHana
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(6) -- String
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
	"PR_1598_Update_Table" "t"
WHERE
	"t"."Id" = 1
LIMIT 1

-- SapHana.Native SapHana
DECLARE @Name NVarChar(5) -- String
SET     @Name = 'Jacob'
DECLARE @Age Integer -- Int32
SET     @Age = 15
DECLARE @Id Integer -- Int32
SET     @Id = 1

UPDATE
	"PR_1598_Update_Table" "t1"
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
	"PR_1598_Update_Table" "t"
WHERE
	"t"."Id" = 1
LIMIT 1

-- SapHana.Native SapHana
DECLARE @Age Integer -- Int32
SET     @Age = 22
DECLARE @Id Integer -- Int32
SET     @Id = 1

UPDATE
	"PR_1598_Update_Table" "t1"
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
	"PR_1598_Update_Table" "t"
WHERE
	"t"."Id" = 1
LIMIT 1

