-- Firebird.2.5 Firebird

CREATE TABLE "aa"
(
	"bb" Int                                    NOT NULL,
	"cc" VarChar(255) CHARACTER SET UNICODE_FSS,

	CONSTRAINT "PK_aa" PRIMARY KEY ("bb")
)

-- Firebird.2.5 Firebird
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

-- Firebird.2.5 Firebird

SELECT
	"t1"."bb",
	"t1"."cc"
FROM
	"aa" "t1"

-- Firebird.2.5 Firebird

DROP TABLE "aa"

