-- SapHana.Native SapHana
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(3) -- String
SET     @Name = 'Max'
DECLARE @Age Integer -- Int32
SET     @Age = 20
DECLARE @Gender NVarChar(6) -- String
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
	:"Id",
	:"Name",
	:"Age",
	:"Gender"
)

-- SapHana.Native SapHana
SELECT
	"t"."Id",
	"t"."Name",
	"t"."Age",
	"t"."Gender"
FROM
	"PR_1598_Update_Enum_Table" "t"
WHERE
	"t"."Id" = 1
LIMIT 1

-- SapHana.Native SapHana
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'Jack'
DECLARE @Age Integer -- Int32
SET     @Age = 2
DECLARE @Gender NVarChar(4) -- String
SET     @Gender = 'Male'
DECLARE @Id Integer -- Int32
SET     @Id = 1

UPDATE
	"PR_1598_Update_Enum_Table" "t1"
SET
	"Name" = :"Name",
	"Age" = :"Age",
	"Gender" = :"Gender"
WHERE
	"t1"."Id" = :"Id"

-- SapHana.Native SapHana
SELECT
	"t"."Id",
	"t"."Name",
	"t"."Age",
	"t"."Gender"
FROM
	"PR_1598_Update_Enum_Table" "t"
WHERE
	"t"."Id" = 1
LIMIT 1

-- SapHana.Native SapHana
DECLARE @Name NVarChar(8) -- String
SET     @Name = 'Francine'
DECLARE @Age Integer -- Int32
SET     @Age = 20
DECLARE @Id Integer -- Int32
SET     @Id = 1

UPDATE
	"PR_1598_Update_Enum_Table" "t1"
SET
	"Name" = :"Name",
	"Age" = :"Age"
WHERE
	"t1"."Id" = :"Id"

-- SapHana.Native SapHana
SELECT
	"t"."Id",
	"t"."Name",
	"t"."Age",
	"t"."Gender"
FROM
	"PR_1598_Update_Enum_Table" "t"
WHERE
	"t"."Id" = 1
LIMIT 1

