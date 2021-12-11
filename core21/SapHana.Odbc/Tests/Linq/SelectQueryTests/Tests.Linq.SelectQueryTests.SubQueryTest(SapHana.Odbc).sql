BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "SampleClass"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "SampleClass"
(
	"Id"    Integer NOT NULL,
	"Value" Integer NOT NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Value_1  -- Int32
SET     @Value_1 = 100

INSERT INTO "SampleClass"
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
	Add_Days(CURRENT_TIMESTAMP, "t"."Value"),
	Add_Days(CURRENT_TIMESTAMP, 2)
FROM
	"SampleClass" "t"
WHERE
	"t"."Value" = 1
UNION
SELECT
	"t1"."Value1",
	"t1"."Value2"
FROM
	(
		SELECT
			Add_Days(CURRENT_TIMESTAMP, 3) as "Value1",
			Add_Days(CURRENT_TIMESTAMP, 4) as "Value2"
FROM DUMMY
	) "t1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t"."Id",
	"t"."Value"
FROM
	"SampleClass" "t"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "SampleClass"

