-- DB2 DB2.LUW DB2LUW
DECLARE @data VarChar -- String
SET     @data = NULL

INSERT INTO "StringTestTable"
(
	ID,
	"Data"
)
VALUES
(
	2,
	@data
)

-- DB2 DB2.LUW DB2LUW
SELECT
	"t".ID,
	"t"."Data"
FROM
	"StringTestTable" "t"
WHERE
	"t".ID = 2
FETCH NEXT 2 ROWS ONLY

