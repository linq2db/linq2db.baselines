BeforeExecute
-- Firebird.2.5 Firebird

DELETE FROM
	"SequenceTest" "t1"
WHERE
	"t1"."Value_" = 'SeqValue'

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @Value VarChar(8) -- String
SET     @Value = 'SeqValue'
DECLARE @IDENTITY_PARAMETER Decimal
SET     @IDENTITY_PARAMETER = NULL

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
RETURNING
	ID

BeforeExecute
-- Firebird.2.5 Firebird

SELECT FIRST 2
	"t1".ID,
	"t1"."Value_"
FROM
	"SequenceTest" "t1"
WHERE
	"t1"."Value_" = 'SeqValue'

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @id1 Integer -- Int32
SET     @id1 = 2

DELETE FROM
	"SequenceTest" "t1"
WHERE
	"t1".ID = @id1

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	COUNT(*)
FROM
	"SequenceTest" "t1"
WHERE
	"t1"."Value_" = 'SeqValue'

