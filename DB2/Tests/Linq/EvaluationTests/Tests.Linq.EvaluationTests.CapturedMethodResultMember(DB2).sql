-- DB2 DB2.LUW DB2LUW
DECLARE @ID Integer(4) -- Int32
SET     @ID = 5

INSERT INTO "ClientEvaluatedRecord"
(
	ID
)
VALUES
(
	@ID
)

-- DB2 DB2.LUW DB2LUW
DECLARE @Item1 Integer(4) -- Int32
SET     @Item1 = 5

SELECT
	"t1".ID
FROM
	"ClientEvaluatedRecord" "t1"
WHERE
	"t1".ID = @Item1
FETCH NEXT 2 ROWS ONLY

