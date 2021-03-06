﻿BeforeExecute
-- Firebird3 Firebird

INSERT INTO "AllTypes"
(
	"smallintDataType",
	"intDataType"
)
SELECT
	123,
	"t2"."smallintDataType"
FROM
	(
		SELECT DISTINCT
			"c_1"."smallintDataType"
		FROM
			"AllTypes" "t1"
				INNER JOIN "AllTypes" "c_1" ON "t1"."smallintDataType" = "c_1"."intDataType"
		WHERE
			"t1"."smallintDataType" IS NULL
	) "t2"

BeforeExecute
-- Firebird3 Firebird
DECLARE @p_1 Integer -- Int32
SET     @p_1 = 1234

INSERT INTO "AllTypes"
(
	"smallintDataType",
	"intDataType"
)
SELECT
	123,
	"t2"."smallintDataType"
FROM
	(
		SELECT DISTINCT
			"c_1"."smallintDataType"
		FROM
			"AllTypes" "t1"
				INNER JOIN "AllTypes" "c_1" ON "t1"."smallintDataType" = "c_1"."intDataType"
		WHERE
			"t1"."smallintDataType" = @p_1
	) "t2"

