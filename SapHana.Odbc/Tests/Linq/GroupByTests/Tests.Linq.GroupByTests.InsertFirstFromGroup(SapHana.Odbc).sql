-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "temp_table_1"
(
	"ID"    Integer       NOT NULL,
	"Value" NVarChar(255)     NULL,

	PRIMARY KEY ("ID")
)

-- SapHana.Odbc SapHanaOdbc
DECLARE @ID Int -- Int32
SET     @ID = 1
DECLARE @Value NVarChar(5) -- String
SET     @Value = 'Value'

INSERT INTO "temp_table_1"
(
	"ID",
	"Value"
)
VALUES
(
	?,
	?
)

-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "temp_table_2"
(
	"Value" NVarChar(50) NOT NULL,

	PRIMARY KEY ("Value")
)

-- SapHana.Odbc SapHanaOdbc

INSERT INTO "temp_table_2"
(
	"Value"
)
SELECT
	"t1"."Value_1"
FROM
	(
		SELECT
			"gr"."ID"
		FROM
			"temp_table_1" "gr"
		GROUP BY
			"gr"."ID"
	) "gr_1"
		INNER JOIN LATERAL (
			SELECT
				"c_1"."Value" as "Value_1"
			FROM
				"temp_table_1" "c_1"
			WHERE
				"gr_1"."ID" = "c_1"."ID"
			LIMIT 1
		) "t1" ON 1=1

-- SapHana.Odbc SapHanaOdbc

DROP TABLE "temp_table_2"

-- SapHana.Odbc SapHanaOdbc

DROP TABLE "temp_table_1"

