BeforeExecute
-- Firebird3 Firebird

CREATE TABLE "aa"
(
	"bb" Int                                    NOT NULL,
	"cc" VarChar(255) CHARACTER SET UNICODE_FSS,

	CONSTRAINT "PK_aa" PRIMARY KEY ("bb")
)

BeforeExecute
-- Firebird3 Firebird
DECLARE @cc VarChar(5) -- String
SET     @cc = 'hallo'
DECLARE @bb Integer -- Int32
SET     @bb = 99

INSERT INTO "aa"
(
	"cc",
	"bb"
)
VALUES
(
	@cc,
	@bb
)

BeforeExecute
-- Firebird3 Firebird

SELECT 
	"t1"."cc", 
	"t1"."bb"
FROM
	"aa" "t1"

BeforeExecute
-- Firebird3 Firebird

DROP TABLE "aa"

