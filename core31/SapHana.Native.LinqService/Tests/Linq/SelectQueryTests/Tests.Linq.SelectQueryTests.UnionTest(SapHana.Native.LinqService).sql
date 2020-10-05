BeforeExecute
-- SapHana.Native SapHana

CREATE COLUMN TABLE "SampleClass"
(
	"Id"    Integer NOT NULL,
	"Value" Integer NOT NULL
)

BeforeExecute
-- SapHana.Native SapHana

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
-- SapHana.Native SapHana

SELECT
	"v"."Value2"
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
			"t1"."Value1",
			"t1"."Value2"
		FROM
			(
				SELECT
					Add_Days(CURRENT_TIMESTAMP, 3) as "Value1",
					Add_Days(CURRENT_TIMESTAMP, 4) as "Value2"
FROM DUMMY
			) "t1"
	) "v"

BeforeExecute
-- SapHana.Native SapHana

DROP TABLE "SampleClass"

