BeforeExecute
-- Firebird

CREATE TABLE "Issue1403Tests_2"
(
	"event_id"          Int                                    NOT NULL,
	"event_description" VarChar(255) CHARACTER SET UNICODE_FSS NOT NULL,

	CONSTRAINT "PK_Issue1403Tests_2" PRIMARY KEY ("event_id")
)

BeforeExecute
-- Firebird

INSERT INTO "Issue1403Tests_2"
(
	"event_id",
	"event_description"
)
VALUES
(
	1,
	'New event'
)

BeforeExecute
-- Firebird

DROP TABLE "Issue1403Tests_2"

