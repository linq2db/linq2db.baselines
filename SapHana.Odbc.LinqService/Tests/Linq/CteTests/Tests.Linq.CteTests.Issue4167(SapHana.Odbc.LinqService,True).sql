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

WITH "CTE_1" ("EnumValue")
AS
(
	SELECT
		CASE
			WHEN "g_1"."EnumValue" IS NOT NULL THEN "g_1"."EnumValue"
			ELSE 0
		END
	FROM
		"Issue4167Table" "g_1"
	WHERE
		"g_1"."Value" = '000001'
	GROUP BY
		"g_1"."Value",
		"g_1"."EnumValue"
)
SELECT
	"t1"."EnumValue"
FROM
	"CTE_1" "t1"
ORDER BY
	"t1"."EnumValue"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue4167Table"

