BeforeExecute
-- Firebird

DELETE FROM
	"SequenceTest" "t1"
WHERE
	"t1"."Value_" = 'SeqValue'

BeforeExecute
-- Firebird
DECLARE @Value_1 VarChar(8) -- String
SET     @Value_1 = 'SeqValue'

INSERT INTO "SequenceTest"
(
	ID,
	"Value_"
)
VALUES
(
	GEN_ID("SequenceTestSeq", 1),
	@Value_1
)

BeforeExecute
-- Firebird
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT FIRST @take 
	"t1".ID, 
	"t1"."Value_"
FROM
	"SequenceTest" "t1"
WHERE
	"t1"."Value_" = 'SeqValue'

BeforeExecute
-- Firebird
DECLARE @id Integer -- Int32
SET     @id = 1

DELETE FROM
	"SequenceTest" "t1"
WHERE
	"t1".ID = @id

BeforeExecute
-- Firebird

SELECT 
	Count(*)
FROM
	"SequenceTest" "t1"
WHERE
	"t1"."Value_" = 'SeqValue'

