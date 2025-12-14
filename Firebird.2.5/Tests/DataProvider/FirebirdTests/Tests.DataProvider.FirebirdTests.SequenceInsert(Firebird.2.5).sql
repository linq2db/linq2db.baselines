-- Firebird.2.5 Firebird

DELETE FROM
	"SequenceTest" "t1"
WHERE
	"t1"."Value_" = 'SeqValue'

-- Firebird.2.5 Firebird
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
	@Value
)

-- Firebird.2.5 Firebird

SELECT FIRST 2
	"t1".ID,
	"t1"."Value_"
FROM
	"SequenceTest" "t1"
WHERE
	"t1"."Value_" = 'SeqValue'

-- Firebird.2.5 Firebird
DECLARE @id Integer -- Int32
SET     @id = 1

DELETE FROM
	"SequenceTest" "t1"
WHERE
	"t1".ID = @id

-- Firebird.2.5 Firebird

SELECT
	COUNT(*)
FROM
	"SequenceTest" "t1"
WHERE
	"t1"."Value_" = 'SeqValue'

