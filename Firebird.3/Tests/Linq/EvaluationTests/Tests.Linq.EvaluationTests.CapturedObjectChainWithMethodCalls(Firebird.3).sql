-- Firebird.3 Firebird3
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

-- Firebird.3 Firebird3
DECLARE @p Integer -- Int32
SET     @p = 5

SELECT
	"t1".ID
FROM
	"ClientEvaluatedRecord" "t1"
WHERE
	"t1".ID = @p
FETCH NEXT 2 ROWS ONLY

-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 5

SELECT
	"t1".ID
FROM
	"ClientEvaluatedRecord" "t1"
WHERE
	"t1".ID = @Id
FETCH NEXT 2 ROWS ONLY

