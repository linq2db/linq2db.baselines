BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @ID Integer -- Int32
SET     @ID = 5

INSERT INTO "Issue1316Tests"
(
	ID
)
VALUES
(
	@ID
)

BeforeExecute
-- Firebird.2.5 Firebird

SELECT FIRST 2
	"t1".ID
FROM
	"Issue1316Tests" "t1"
WHERE
	"t1".ID IN (4, 5, 6)

