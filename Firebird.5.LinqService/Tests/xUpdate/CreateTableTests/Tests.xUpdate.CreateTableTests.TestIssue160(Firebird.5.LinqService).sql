BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

CREATE TABLE "aa"
(
	"bb" Int                                    NOT NULL,
	"cc" VarChar(255) CHARACTER SET UNICODE_FSS,

	CONSTRAINT "PK_aa" PRIMARY KEY ("bb")
)

BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)
DECLARE @bb Integer -- Int32
SET     @bb = 99
DECLARE @cc VarChar(5) -- String
SET     @cc = 'hallo'

INSERT INTO "aa"
(
	"bb",
	"cc"
)
VALUES
(
	@bb,
	@cc
)

BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

SELECT
	"t1"."bb",
	"t1"."cc"
FROM
	"aa" "t1"

BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

DROP TABLE "aa"

