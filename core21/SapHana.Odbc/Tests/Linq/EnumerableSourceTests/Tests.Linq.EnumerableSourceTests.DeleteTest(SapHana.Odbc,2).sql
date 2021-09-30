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
SET     @Id = 3
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
SET     @Id = 4
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

DELETE FROM
	"TableToInsert" "t1"
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"TableToInsert" "t"
				INNER JOIN (
					SELECT 3 AS "Id" FROM DUMMY
					UNION ALL
					SELECT 4 FROM DUMMY) "r" ON "t"."Id" = "r"."Id"
		WHERE
			"t1"."Id" = "t"."Id"
	)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "TableToInsert"

