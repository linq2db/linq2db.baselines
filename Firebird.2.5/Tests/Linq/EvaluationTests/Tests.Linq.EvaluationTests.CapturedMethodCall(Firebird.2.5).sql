-- Firebird.2.5 Firebird
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

-- Firebird.2.5 Firebird
DECLARE @p Integer -- Int32
SET     @p = 5

SELECT FIRST 2
	"t1".ID
FROM
	"ClientEvaluatedRecord" "t1"
WHERE
	"t1".ID = @p

