BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Name NVarChar -- String
SET     @Name = NULL
DECLARE @Age Int -- Int32
SET     @Age = 2

INSERT INTO "PR_1598_Update_Fluent_Table"
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
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	"t"."Id",
	"t"."Name",
	"t"."Age"
FROM
	"PR_1598_Update_Fluent_Table" "t"
WHERE
	"t"."Id" = 1
LIMIT 1

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @Name NVarChar(6) -- String
SET     @Name = 'Franki'
DECLARE @Age Int -- Int32
SET     @Age = 18
DECLARE @Id Int -- Int32
SET     @Id = 1

UPDATE
	"PR_1598_Update_Fluent_Table" "t1"
SET
	"Name" = ?,
	"Age" = ?
WHERE
	"t1"."Id" = ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	"t"."Id",
	"t"."Name",
	"t"."Age"
FROM
	"PR_1598_Update_Fluent_Table" "t"
WHERE
	"t"."Id" = 1
LIMIT 1

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'Jack'
DECLARE @Id Int -- Int32
SET     @Id = 1

UPDATE
	"PR_1598_Update_Fluent_Table" "t1"
SET
	"Name" = ?
WHERE
	"t1"."Id" = ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)

SELECT
	"t"."Id",
	"t"."Name",
	"t"."Age"
FROM
	"PR_1598_Update_Fluent_Table" "t"
WHERE
	"t"."Id" = 1
LIMIT 1

