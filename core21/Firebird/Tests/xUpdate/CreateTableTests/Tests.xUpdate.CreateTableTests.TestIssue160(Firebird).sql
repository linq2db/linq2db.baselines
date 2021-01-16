BeforeExecute
-- Firebird

CREATE TABLE "aa"
(
	"bb" Int                                    NOT NULL,
	"cc" VarChar(255) CHARACTER SET UNICODE_FSS,

	CONSTRAINT "PK_aa" PRIMARY KEY ("bb")
)

BeforeExecute
-- Firebird
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
-- Firebird

DROP TABLE "aa"

