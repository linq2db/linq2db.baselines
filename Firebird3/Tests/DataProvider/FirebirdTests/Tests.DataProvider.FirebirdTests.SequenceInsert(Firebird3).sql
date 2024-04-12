BeforeExecute
-- Firebird3 Firebird

DELETE FROM
	"SequenceTest" "t1"
WHERE
	"t1"."Value_" = 'SeqValue'

BeforeExecute
-- Firebird3 Firebird
DECLARE @Value VarChar(8) -- String
SET     @Value = 'SeqValue'

INSERT INTO "SequenceTest"
(
	ID,
	"Value_"
)
VALUES
(
	GEN_ID("SequenceTestSeq", 1),
	CAST(@Value AS VARCHAR(8))
)

BeforeExecute
-- Firebird3 Firebird

SELECT FIRST 2
	"t1".ID,
	"t1"."Value_"
FROM
	"SequenceTest" "t1"
WHERE
	"t1"."Value_" = 'SeqValue'

BeforeExecute
-- Firebird3 Firebird
DECLARE @id Integer -- Int32
SET     @id = 1

DELETE FROM
	"SequenceTest" "t1"
WHERE
	"t1".ID = @id

BeforeExecute
-- Firebird3 Firebird

SELECT
	Count(*)
FROM
	"SequenceTest" "t1"
WHERE
	"t1"."Value_" = 'SeqValue'

