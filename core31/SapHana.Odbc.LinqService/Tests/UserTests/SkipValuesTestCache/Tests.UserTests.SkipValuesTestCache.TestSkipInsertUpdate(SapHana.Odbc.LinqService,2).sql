﻿BeforeExecute
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
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'John'
DECLARE @Age  -- Int32
SET     @Age = 2

INSERT INTO "PR_1598_Insert_Table_Cache"
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
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	"t"."Id",
	"t"."Name",
	"t"."Age"
FROM
	"PR_1598_Insert_Table_Cache" "t"
WHERE
	"t"."Id" = 1
LIMIT ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'John'
DECLARE @Age  -- Int32
SET     @Age = 2
DECLARE @Id  -- Int32
SET     @Id = 1

UPDATE
	"PR_1598_Insert_Table_Cache"
SET
	"PR_1598_Insert_Table_Cache"."Name" = ?,
	"PR_1598_Insert_Table_Cache"."Age" = ?
WHERE
	"PR_1598_Insert_Table_Cache"."Id" = ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @take  -- Int32
SET     @take = 1

SELECT
	"t"."Id",
	"t"."Name",
	"t"."Age"
FROM
	"PR_1598_Insert_Table_Cache" "t"
WHERE
	"t"."Id" = 1
LIMIT ?

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "PR_1598_Insert_Table_Cache"

