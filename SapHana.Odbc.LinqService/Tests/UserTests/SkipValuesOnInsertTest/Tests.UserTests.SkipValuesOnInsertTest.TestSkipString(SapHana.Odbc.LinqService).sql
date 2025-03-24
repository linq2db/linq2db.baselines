﻿BeforeExecute
--  SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Age  -- Int32
SET     @Age = 14

INSERT INTO "PR_1598_Insert_Table"
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
--  SapHana.Odbc SapHanaOdbc

SELECT
	"t"."Id",
	"t"."Name",
	"t"."Age"
FROM
	"PR_1598_Insert_Table" "t"
WHERE
	"t"."Id" = 1
LIMIT 1

BeforeExecute
--  SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @Age  -- Int32
SET     @Age = 15

INSERT INTO "PR_1598_Insert_Table"
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
--  SapHana.Odbc SapHanaOdbc

SELECT
	"t"."Id",
	"t"."Name",
	"t"."Age"
FROM
	"PR_1598_Insert_Table" "t"
WHERE
	"t"."Id" = 2
LIMIT 1

