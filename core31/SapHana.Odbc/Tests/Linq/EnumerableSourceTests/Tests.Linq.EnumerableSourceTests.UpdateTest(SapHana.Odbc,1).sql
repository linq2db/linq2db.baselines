BeforeExecute
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
DECLARE @Value_1 NVarChar(5) -- String
SET     @Value_1 = 'Janet'

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
DECLARE @Value_1 NVarChar(3) -- String
SET     @Value_1 = 'Doe'

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

UPDATE
	"TableToInsert"
SET
	"TableToInsert"."Value" = (
		SELECT
			"r"."Value"
		FROM
			"TableToInsert" "t"
				INNER JOIN (
					SELECT 2 AS "Id", 'Janet Updated' AS "Value" FROM DUMMY
					UNION ALL
					SELECT 3, 'Doe Updated' FROM DUMMY) "r" ON "t"."Id" = "r"."Id"
		WHERE
			"TableToInsert"."Id" = "t"."Id"
	)
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"TableToInsert" "t_1"
				INNER JOIN (
					SELECT 2 AS "Id", 'Janet Updated' AS "Value" FROM DUMMY
					UNION ALL
					SELECT 3, 'Doe Updated' FROM DUMMY) "r_1" ON "t_1"."Id" = "r_1"."Id"
		WHERE
			"TableToInsert"."Id" = "t_1"."Id"
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

