﻿BeforeExecute
-- Firebird.3 Firebird3

CREATE TABLE "aa"
(
	"bb" Int                                    NOT NULL,
	"cc" VarChar(255) CHARACTER SET UNICODE_FSS,

	CONSTRAINT "PK_aa" PRIMARY KEY ("bb")
)

BeforeExecute
-- Firebird.3 Firebird3
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
	CAST(@bb AS Int),
	CAST(@cc AS VARCHAR(5))
)

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."bb",
	"t1"."cc"
FROM
	"aa" "t1"

BeforeExecute
-- Firebird.3 Firebird3

DROP TABLE "aa"

