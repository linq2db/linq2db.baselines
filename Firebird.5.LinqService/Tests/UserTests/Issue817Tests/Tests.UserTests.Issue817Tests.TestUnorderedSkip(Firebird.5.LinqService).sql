﻿BeforeExecute
-- Firebird.5 Firebird4

SELECT
	Count(*)
FROM
	"Person" "t1"

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @skip Integer -- Int32
SET     @skip = 1

SELECT
	1
FROM
	"Person" "t1"
OFFSET @skip ROWS

