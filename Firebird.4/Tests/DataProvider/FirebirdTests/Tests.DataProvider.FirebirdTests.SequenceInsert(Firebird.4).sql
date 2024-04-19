﻿BeforeExecute
-- Firebird.4 Firebird4

DELETE FROM
	"SequenceTest" "t1"
WHERE
	"t1"."Value_" = 'SeqValue'

BeforeExecute
-- Firebird.4 Firebird4
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
DECLARE @id Integer -- Int32
SET     @id = 1

DELETE FROM
	"SequenceTest" "t1"
WHERE
	"t1".ID = @id

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	Count(*)
FROM
	"SequenceTest" "t1"
WHERE
	"t1"."Value_" = 'SeqValue'

