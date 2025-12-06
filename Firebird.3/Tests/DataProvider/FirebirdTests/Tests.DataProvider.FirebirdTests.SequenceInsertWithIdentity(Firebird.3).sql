-- Firebird.3 Firebird3

DELETE FROM
	"SequenceTest" "t1"
WHERE
	"t1"."Value_" = 'SeqValue'

-- Firebird.3 Firebird3
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

-- Firebird.3 Firebird3

SELECT
	"t1".ID,
	"t1"."Value_"
FROM
	"SequenceTest" "t1"
WHERE
	"t1"."Value_" = 'SeqValue'
FETCH NEXT 2 ROWS ONLY

-- Firebird.3 Firebird3
DECLARE @id1 Integer -- Int32
SET     @id1 = 2

DELETE FROM
	"SequenceTest" "t1"
WHERE
	"t1".ID = @id1

-- Firebird.3 Firebird3

SELECT
	COUNT(*)
FROM
	"SequenceTest" "t1"
WHERE
	"t1"."Value_" = 'SeqValue'

