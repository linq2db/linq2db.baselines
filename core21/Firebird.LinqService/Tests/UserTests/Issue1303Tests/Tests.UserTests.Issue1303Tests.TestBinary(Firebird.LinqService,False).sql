BeforeExecute
-- Firebird

CREATE TABLE "Issue1303"
(
	ID       Int  NOT NULL,
	"Array"  BLOB,
	"Binary" BLOB,

	CONSTRAINT "PK_Issue1303" PRIMARY KEY (ID)
)

BeforeExecute
-- Firebird
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
-- Firebird
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT FIRST @take 
	"t1".ID, 
	"t1"."Array", 
	"t1"."Binary"
FROM
	"Issue1303" "t1"
WHERE
	"t1".ID = 1

BeforeExecute
-- Firebird
DECLARE @take Integer -- Int32
SET     @take = 2
DECLARE @Array_2 Binary(3)
SET     @Array_2 = X'010203'

SELECT FIRST @take 
	"t1".ID, 
	"t1"."Array", 
	"t1"."Binary"
FROM
	"Issue1303" "t1"
WHERE
	"t1"."Array" = @Array_2

BeforeExecute
-- Firebird
DECLARE @take Integer -- Int32
SET     @take = 2
DECLARE @Binary_2 Binary(2)
SET     @Binary_2 = X'0405'

SELECT FIRST @take 
	"t1".ID, 
	"t1"."Array", 
	"t1"."Binary"
FROM
	"Issue1303" "t1"
WHERE
	"t1"."Binary" = @Binary_2

BeforeExecute
-- Firebird

DROP TABLE "Issue1303"

