-- DB2 DB2.LUW DB2LUW
INSERT INTO "InsertSelectAssociationRow"
(
	"Pk",
	ID,
	"intDataType"
)
SELECT
	"t2".ID,
	123,
	"t2".ID
FROM
	(
		SELECT DISTINCT
			"a_Association".ID
		FROM
			"InsertSelectAssociationRow" "t1"
				INNER JOIN "InsertSelectAssociationRow" "a_Association" ON CAST("t1".ID AS Int) = "a_Association"."intDataType"
		WHERE
			1 = 0
	) "t2"

-- DB2 DB2.LUW DB2LUW
DECLARE @p SmallInt(2) -- Int16
SET     @p = 1234

INSERT INTO "InsertSelectAssociationRow"
(
	"Pk",
	ID,
	"intDataType"
)
SELECT
	"t2".ID,
	123,
	"t2".ID
FROM
	(
		SELECT DISTINCT
			"a_Association".ID
		FROM
			"InsertSelectAssociationRow" "t1"
				INNER JOIN "InsertSelectAssociationRow" "a_Association" ON CAST("t1".ID AS Int) = "a_Association"."intDataType"
		WHERE
			"t1".ID = @p
	) "t2"

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."Pk",
	"t1".ID,
	"t1"."intDataType"
FROM
	"InsertSelectAssociationRow" "t1"

