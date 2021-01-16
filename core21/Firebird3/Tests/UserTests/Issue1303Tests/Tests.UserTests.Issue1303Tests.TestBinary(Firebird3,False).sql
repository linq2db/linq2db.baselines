BeforeExecute
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

DROP TABLE "Issue1303"

