BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @ID  -- Int16
SET     @ID = 123
DECLARE @ID  -- Int16
SET     @ID = 0

INSERT INTO "AllTypes"
(
	"smallintDataType",
	"intDataType"
)
SELECT
	?,
	Cast("t1"."ID" as Integer)
FROM
	(
		SELECT DISTINCT
			"a_Association"."smallintDataType" as "ID"
		FROM
			"AllTypes" "_"
				INNER JOIN "AllTypes" "a_Association" ON "_"."smallintDataType" = "a_Association"."intDataType"
		WHERE
			Cast("_"."smallintDataType" as Integer) = ?
	) "t1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @ID  -- Int16
SET     @ID = 123
DECLARE @ID  -- Int16
SET     @ID = 1234

INSERT INTO "AllTypes"
(
	"smallintDataType",
	"intDataType"
)
SELECT
	?,
	Cast("t1"."ID" as Integer)
FROM
	(
		SELECT DISTINCT
			"a_Association"."smallintDataType" as "ID"
		FROM
			"AllTypes" "_"
				INNER JOIN "AllTypes" "a_Association" ON "_"."smallintDataType" = "a_Association"."intDataType"
		WHERE
			Cast("_"."smallintDataType" as Integer) = ?
	) "t1"

