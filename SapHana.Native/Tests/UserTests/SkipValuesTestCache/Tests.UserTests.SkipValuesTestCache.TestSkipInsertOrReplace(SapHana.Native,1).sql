-- SapHana.Native SapHana
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'John'

UPSERT "PR_1598_Insert_Table_Cache"
(
	"Id",
	"Name"
)
VALUES
(
	:"Id",
	:"Name"
)
WITH PRIMARY KEY

-- SapHana.Native SapHana
SELECT
	"t"."Id",
	"t"."Name",
	"t"."Age"
FROM
	"PR_1598_Insert_Table_Cache" "t"
WHERE
	"t"."Id" = 1
LIMIT 1

-- SapHana.Native SapHana
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'John'

UPSERT "PR_1598_Insert_Table_Cache"
(
	"Id",
	"Name"
)
VALUES
(
	:"Id",
	:"Name"
)
WITH PRIMARY KEY

-- SapHana.Native SapHana
SELECT
	"t"."Id",
	"t"."Name",
	"t"."Age"
FROM
	"PR_1598_Insert_Table_Cache" "t"
WHERE
	"t"."Id" = 1
LIMIT 1

