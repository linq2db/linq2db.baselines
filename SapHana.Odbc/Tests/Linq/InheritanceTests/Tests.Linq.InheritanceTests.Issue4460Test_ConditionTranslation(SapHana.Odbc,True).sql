﻿BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Code NVarChar(5) -- String
SET     @Code = 'Child'
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'Jane'
DECLARE @IsMale TinyInt(1) -- Byte
SET     @IsMale = 0

INSERT INTO "Base"
(
	"Code",
	"Id",
	"Name",
	"IsMale"
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
DECLARE @Code NVarChar(6) -- String
SET     @Code = 'Child2'
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Name NVarChar -- String
SET     @Name = NULL
DECLARE @Age Int -- Int32
SET     @Age = 10

INSERT INTO "Base"
(
	"Code",
	"Id",
	"Name",
	"Age"
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
	"e"."Code",
	"e"."Id",
	"e"."Name",
	"e"."IsMale",
	"e"."Age"
FROM
	"Base" "e"
WHERE
	"e"."Code" = 'Child2' OR
	"e"."Code" = 'Child' OR
	"e"."Code" = 'BaseChild' OR
	"e"."Id" = 0 AND NOT ("e"."Code" = 'Child2' OR "e"."Code" = 'Child' OR "e"."Code" = 'BaseChild')
ORDER BY
	"e"."Id"

