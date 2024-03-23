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
DECLARE @Value  -- Int32
SET     @Value = 100

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
	"t_1"."Id",
	"t_1"."Value",
	"t2"."Value1",
	"t2"."Value2"
FROM
	"SampleClass" "t_1"
		LEFT JOIN (
			SELECT
				"t1"."Value1",
				"t1"."Value2"
			FROM
				(
					SELECT
						Add_Days(CURRENT_TIMESTAMP, "t"."Value") as "Value1",
						Add_Days(CURRENT_TIMESTAMP, 2) as "Value2"
					FROM
						"SampleClass" "t"
					WHERE
						"t"."Value" = 1
					UNION
					SELECT
						Add_Days(CURRENT_TIMESTAMP, 3) as "Value1",
						Add_Days(CURRENT_TIMESTAMP, 4) as "Value2"
FROM DUMMY
				) "t1"
			LIMIT 1
		) "t2" ON 1=1

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "SampleClass"

