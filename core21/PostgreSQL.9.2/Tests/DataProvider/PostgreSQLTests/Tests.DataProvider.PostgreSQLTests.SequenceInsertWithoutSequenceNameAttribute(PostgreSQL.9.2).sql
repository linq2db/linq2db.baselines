﻿BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @Value_1 Text(8) -- String
SET     @Value_1 = 'SeqValue'

INSERT INTO "SequenceTest2"
(
	"Value"
)
VALUES
(
	:Value_1
)

