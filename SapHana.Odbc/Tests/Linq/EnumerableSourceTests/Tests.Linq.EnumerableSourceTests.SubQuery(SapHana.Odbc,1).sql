﻿BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "TableToInsert"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "TableToInsert"
(
	"Id"    Integer       NOT NULL,
	"Value" NVarChar(255)     NULL,

	PRIMARY KEY ("Id")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @Value NVarChar(5) -- String
SET     @Value = 'Janet'

INSERT INTO "TableToInsert"
(
	"Id",
	"Value"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 3
DECLARE @Value NVarChar(3) -- String
SET     @Value = 'Doe'

INSERT INTO "TableToInsert"
(
	"Id",
	"Value"
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
	"t"."Value"
FROM
	"TableToInsert" "t"
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT 2 AS "Id", 'Janet' AS "Value" FROM DUMMY
				UNION ALL
				SELECT 3, 'Doe' FROM DUMMY) "r"
		WHERE
			"t"."Id" = "r"."Id" AND ("t"."Value" = "r"."Value" OR "t"."Value" IS NULL AND "r"."Value" IS NULL)
	)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."Id",
	"t1"."Value"
FROM
	"TableToInsert" "t1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "TableToInsert"

