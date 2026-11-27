-- Firebird.4 Firebird4
DECLARE @ID Integer -- Int32
SET     @ID = 5

INSERT INTO "ClientEvaluatedRecord"
(
	ID
)
VALUES
(
	@ID
)

-- Firebird.4 Firebird4
DECLARE @Item1 Integer -- Int32
SET     @Item1 = 5

SELECT
	"t1".ID
FROM
	"ClientEvaluatedRecord" "t1"
WHERE
	"t1".ID = @Item1
FETCH NEXT 2 ROWS ONLY

