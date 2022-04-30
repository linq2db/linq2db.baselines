﻿BeforeExecute
-- Firebird3 Firebird

CREATE TABLE "Issue1303"
(
	ID       Int  NOT NULL,
	"Array"  BLOB,
	"Binary" BLOB,

	CONSTRAINT "PK_Issue1303" PRIMARY KEY (ID)
)

BeforeExecute
-- Firebird3 Firebird
DECLARE @Array_1 Binary(3)
SET     @Array_1 = X'010203'
DECLARE @Binary_1 Binary(2)
SET     @Binary_1 = X'0405'

INSERT INTO "Issue1303"
(
	ID,
	"Array",
	"Binary"
)
VALUES
(
	1,
	@Array_1,
	@Binary_1
)

BeforeExecute
-- Firebird3 Firebird

SELECT FIRST 2
	"t1".ID,
	"t1"."Array",
	"t1"."Binary"
FROM
	"Issue1303" "t1"
WHERE
	"t1".ID = 1

BeforeExecute
-- Firebird3 Firebird

SELECT FIRST 2
	"t1".ID,
	"t1"."Array",
	"t1"."Binary"
FROM
	"Issue1303" "t1"
WHERE
	"t1"."Array" = X'010203'

BeforeExecute
-- Firebird3 Firebird

SELECT FIRST 2
	"t1".ID,
	"t1"."Array",
	"t1"."Binary"
FROM
	"Issue1303" "t1"
WHERE
	"t1"."Binary" = X'0405'

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue1303')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue1303"';
END

