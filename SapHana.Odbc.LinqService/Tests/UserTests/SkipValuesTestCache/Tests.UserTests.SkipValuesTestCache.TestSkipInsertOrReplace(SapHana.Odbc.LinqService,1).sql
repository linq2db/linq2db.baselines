BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "PR_1598_Insert_Table_Cache"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "PR_1598_Insert_Table_Cache"
(
	"Id"   Integer       NOT NULL,
	"Name" NVarChar(255)     NULL,
	"Age"  Integer           NULL,

	PRIMARY KEY ("Id")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'John'
DECLARE @Id  -- Int32
SET     @Id = 1

UPDATE
	"PR_1598_Insert_Table_Cache" "t1"
SET
	"Name" = ?
WHERE
	"t1"."Id" = ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'John'

INSERT INTO "PR_1598_Insert_Table_Cache"
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
	"PR_1598_Insert_Table_Cache" "t"
WHERE
	"t"."Id" = 1
LIMIT 1

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'John'
DECLARE @Id  -- Int32
SET     @Id = 1

UPDATE
	"PR_1598_Insert_Table_Cache" "t1"
SET
	"Name" = ?
WHERE
	"t1"."Id" = ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t"."Id",
	"t"."Name",
	"t"."Age"
FROM
	"PR_1598_Insert_Table_Cache" "t"
WHERE
	"t"."Id" = 1
LIMIT 1

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "PR_1598_Insert_Table_Cache"

