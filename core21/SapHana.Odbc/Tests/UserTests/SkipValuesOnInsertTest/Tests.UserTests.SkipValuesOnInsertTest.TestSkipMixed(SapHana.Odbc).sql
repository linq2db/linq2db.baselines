BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "PR_1598_Mixed_Table"
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
DECLARE @Name NVarChar(5) -- String
SET     @Name = 'Jason'
DECLARE @Age  -- Int32
SET     @Age = 20

INSERT INTO "PR_1598_Mixed_Table"
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
DECLARE @Age  -- Int32
SET     @Age = 20
DECLARE @Id  -- Int32
SET     @Id = 1

UPDATE
	"PR_1598_Mixed_Table"
SET
	"PR_1598_Mixed_Table"."Age" = ?
WHERE
	"PR_1598_Mixed_Table"."Id" = ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @Age  -- Int32
SET     @Age = 25

INSERT INTO "PR_1598_Mixed_Table"
(
	"Id",
	"Age"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Name NVarChar(5) -- String
SET     @Name = 'Jessy'
DECLARE @Age  -- Int32
SET     @Age = 25
DECLARE @Id  -- Int32
SET     @Id = 2

UPDATE
	"PR_1598_Mixed_Table"
SET
	"PR_1598_Mixed_Table"."Name" = ?,
	"PR_1598_Mixed_Table"."Age" = ?
WHERE
	"PR_1598_Mixed_Table"."Id" = ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "PR_1598_Mixed_Table"

