BeforeExecute
-- Firebird.4 Firebird4

DELETE FROM
	"SequenceTest" "t1"
WHERE
	"t1"."Value_" = 'SeqValue'

BeforeExecute
-- Firebird.4 Firebird4
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
-- Firebird.4 Firebird4

SELECT
	"t1".ID,
	"t1"."Value_"
FROM
	"SequenceTest" "t1"
WHERE
	"t1"."Value_" = 'SeqValue'
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @id1 Integer -- Int32
SET     @id1 = 2

DELETE FROM
	"SequenceTest" "t1"
WHERE
	"t1".ID = @id1

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	COUNT(*)
FROM
	"SequenceTest" "t1"
WHERE
	"t1"."Value_" = 'SeqValue'

