BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "PR_1598_Update_Fluent_Table"
(
	"Id"   Integer       NOT NULL,
	"Name" NVarChar(255)     NULL,
	"Age"  Integer           NULL,

	PRIMARY KEY ("Id")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Name NVarChar -- String
SET     @Name = NULL
DECLARE @Age  -- Int32
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
-- SapHana.Odbc SapHanaOdbc
DECLARE @Name NVarChar(6) -- String
SET     @Name = 'Franki'
DECLARE @Age  -- Int32
SET     @Age = 18
DECLARE @Id  -- Int32
SET     @Id = 1

UPDATE
	"PR_1598_Update_Fluent_Table"
SET
	"PR_1598_Update_Fluent_Table"."Name" = ?,
	"PR_1598_Update_Fluent_Table"."Age" = ?
WHERE
	"PR_1598_Update_Fluent_Table"."Id" = ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'Jack'
DECLARE @Id  -- Int32
SET     @Id = 1

UPDATE
	"PR_1598_Update_Fluent_Table"
SET
	"PR_1598_Update_Fluent_Table"."Name" = ?
WHERE
	"PR_1598_Update_Fluent_Table"."Id" = ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "PR_1598_Update_Fluent_Table"

