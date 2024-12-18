BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue4167Table"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Issue4167Table"
(
	"ID"        Integer       NOT NULL,
	"Value"     NVarChar(255)     NULL,
	"EnumValue" Integer           NULL,

	PRIMARY KEY ("ID")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @ID  -- Int32
SET     @ID = 1
DECLARE @Value NVarChar(6) -- String
SET     @Value = '000001'
DECLARE @EnumValue  -- Int32
SET     @EnumValue = 0

INSERT INTO "Issue4167Table"
(
	"ID",
	"Value",
	"EnumValue"
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @ID  -- Int32
SET     @ID = 2
DECLARE @Value NVarChar(6) -- String
SET     @Value = '000001'
DECLARE @EnumValue  -- Int32
SET     @EnumValue = 3

INSERT INTO "Issue4167Table"
(
	"ID",
	"Value",
	"EnumValue"
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @ID  -- Int32
SET     @ID = 3
DECLARE @Value NVarChar(6) -- String
SET     @Value = '000001'
DECLARE @EnumValue  -- Int32
SET     @EnumValue = NULL

INSERT INTO "Issue4167Table"
(
	"ID",
	"Value",
	"EnumValue"
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @ID  -- Int32
SET     @ID = 4
DECLARE @Value NVarChar(6) -- String
SET     @Value = '000002'
DECLARE @EnumValue  -- Int32
SET     @EnumValue = 0

INSERT INTO "Issue4167Table"
(
	"ID",
	"Value",
	"EnumValue"
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."EnumValue"
FROM
	(
		SELECT
			CASE
				WHEN "r"."EnumValue" IS NOT NULL THEN "r"."EnumValue"
				ELSE 0
			END as "EnumValue"
		FROM
			"Issue4167Table" "r"
		WHERE
			"r"."Value" = '000001' AND "r"."Value" IS NOT NULL
		GROUP BY
			"r"."Value",
			"r"."EnumValue"
	) "t1"
ORDER BY
	"t1"."EnumValue"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue4167Table"

