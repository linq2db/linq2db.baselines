BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "PR_1598_Insert_Fluent_Table"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "PR_1598_Insert_Fluent_Table"
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

INSERT INTO "PR_1598_Insert_Fluent_Table"
(
	"Id",
	"Name"
)
VALUES
(
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
	"PR_1598_Insert_Fluent_Table" "t"
WHERE
	"t"."Id" = 1
LIMIT 1

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "PR_1598_Insert_Fluent_Table"

