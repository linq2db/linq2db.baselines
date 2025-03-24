﻿BeforeExecute
--  Firebird.3 Firebird3
DECLARE @p BigInt -- Int64
SET     @p = 5

SELECT
	"c_1"."value",
	"c_1"."id"
FROM
	(
		SELECT * FROM "sample_class" where "id" >= @p and "id" < 15
	) "c_1"
WHERE
	"c_1"."id" > 10
ORDER BY
	"c_1"."id"

BeforeExecute
--  Firebird.3 Firebird3
DECLARE @startId Integer -- Int32
SET     @startId = 5
DECLARE @endId Integer -- Int32
SET     @endId = 15

SELECT
	"t"."value",
	"t"."id"
FROM
	"sample_class" "t"
WHERE
	"t"."id" >= @startId AND "t"."id" < @endId AND "t"."id" > 10
ORDER BY
	"t"."id"

