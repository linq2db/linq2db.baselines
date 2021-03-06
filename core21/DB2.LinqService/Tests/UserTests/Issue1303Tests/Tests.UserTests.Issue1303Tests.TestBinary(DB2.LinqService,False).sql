﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "Issue1303"
(
	ID       Int           NOT NULL,
	"Array"  VarBinary(10)     NULL,
	"Binary" VarBinary(10)     NULL,

	CONSTRAINT "PK_Issue1303" PRIMARY KEY (ID)
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Array_1 VarBinary(3) -- Binary
SET     @Array_1 = BX'010203'
DECLARE @Binary_1 VarBinary(2) -- Binary
SET     @Binary_1 = BX'0405'

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
-- DB2 DB2.LUW DB2LUW

SELECT
	"_".ID,
	"_"."Array",
	"_"."Binary"
FROM
	"Issue1303" "_"
WHERE
	"_".ID = 1
FETCH FIRST 2 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Array_2 VarBinary(3) -- Binary
SET     @Array_2 = BX'010203'

SELECT
	"_".ID,
	"_"."Array",
	"_"."Binary"
FROM
	"Issue1303" "_"
WHERE
	"_"."Array" = @Array_2
FETCH FIRST 2 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Binary_2 VarBinary(2) -- Binary
SET     @Binary_2 = BX'0405'

SELECT
	"_".ID,
	"_"."Array",
	"_"."Binary"
FROM
	"Issue1303" "_"
WHERE
	"_"."Binary" = @Binary_2
FETCH FIRST 2 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "Issue1303"

