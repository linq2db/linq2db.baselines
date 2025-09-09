BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
DECLARE @Data VarChar(9) -- String
SET     @Data = '***III***'
DECLARE @ID Integer(4) -- Int32
SET     @ID = 3

UPDATE
	"TrimTestTable" "t1"
SET
	"Data" = @Data
WHERE
	"t1".ID = @ID

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
DECLARE @Data VarChar(9) -- String
SET     @Data = '***OOO***'

UPDATE
	"TrimTestTable" "t"
SET
	"Data" = @Data
WHERE
	"t"."Data" = '***XXX***'

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
DECLARE @Data VarChar(9) -- String
SET     @Data = '***SSS***'
DECLARE @p VarChar(9) -- String
SET     @p = '***HHH***'

UPDATE
	"TrimTestTable" "t"
SET
	"Data" = @Data
WHERE
	"t"."Data" = @p

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"r".ID,
	"r"."Data"
FROM
	"TrimTestTable" "r"
ORDER BY
	"r".ID

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"r".ID,
	"r"."Data"
FROM
	"TrimTestTable" "r"
ORDER BY
	"r".ID

