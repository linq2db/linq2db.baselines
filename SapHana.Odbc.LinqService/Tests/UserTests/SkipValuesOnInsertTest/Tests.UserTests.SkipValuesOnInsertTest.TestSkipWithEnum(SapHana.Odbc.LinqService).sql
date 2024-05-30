BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "PR_1598_Insert_Enum_Table"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "PR_1598_Insert_Enum_Table"
(
	"Id"     Integer       NOT NULL,
	"Name"   NVarChar(255)     NULL,
	"Age"    Integer           NULL,
	"Gender" NVarChar(6)       NULL,

	PRIMARY KEY ("Id")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(3) -- String
SET     @Name = 'Max'
DECLARE @Age  -- Int32
SET     @Age = 20
DECLARE @Gender NVarChar(4) -- String
SET     @Gender = 'Male'

INSERT INTO "PR_1598_Insert_Enum_Table"
(
	"Id",
	"Name",
	"Age",
	"Gender"
)
VALUES
(
	?,
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t"."Id",
	"t"."Name",
	"t"."Age",
	"t"."Gender"
FROM
	"PR_1598_Insert_Enum_Table" "t"
WHERE
	"t"."Id" = 1
LIMIT 1

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @Name NVarChar(5) -- String
SET     @Name = 'Jenny'
DECLARE @Age  -- Int32
SET     @Age = 25

INSERT INTO "PR_1598_Insert_Enum_Table"
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
	"t"."Age",
	"t"."Gender"
FROM
	"PR_1598_Insert_Enum_Table" "t"
WHERE
	"t"."Id" = 2
LIMIT 1

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "PR_1598_Insert_Enum_Table"

