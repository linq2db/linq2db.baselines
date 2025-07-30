BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(6) -- String
SET     @Name = 'Manuel'
DECLARE @Age Int -- Int32
SET     @Age = 14

INSERT INTO "PR_1598_Update_Table"
(
	"Id",
	"Name",
	"Age"
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t"."Id",
	"t"."Name",
	"t"."Age"
FROM
	"PR_1598_Update_Table" "t"
WHERE
	"t"."Id" = 1
LIMIT 1

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Name NVarChar(5) -- String
SET     @Name = 'Jacob'
DECLARE @Age Int -- Int32
SET     @Age = 15
DECLARE @Id Int -- Int32
SET     @Id = 1

UPDATE
	"PR_1598_Update_Table" "t1"
SET
	"Name" = ?,
	"Age" = ?
WHERE
	"t1"."Id" = ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t"."Id",
	"t"."Name",
	"t"."Age"
FROM
	"PR_1598_Update_Table" "t"
WHERE
	"t"."Id" = 1
LIMIT 1

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Age Int -- Int32
SET     @Age = 22
DECLARE @Id Int -- Int32
SET     @Id = 1

UPDATE
	"PR_1598_Update_Table" "t1"
SET
	"Age" = ?
WHERE
	"t1"."Id" = ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t"."Id",
	"t"."Name",
	"t"."Age"
FROM
	"PR_1598_Update_Table" "t"
WHERE
	"t"."Id" = 1
LIMIT 1

