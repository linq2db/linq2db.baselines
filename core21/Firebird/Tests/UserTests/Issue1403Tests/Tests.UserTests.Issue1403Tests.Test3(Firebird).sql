BeforeExecute
-- Firebird

CREATE TABLE "Issue1403Tests_3"
(
	"event_description" VarChar(255) CHARACTER SET UNICODE_FSS NOT NULL,
	"event_id"          Int                                    NOT NULL,

	CONSTRAINT "PK_Issue1403Tests_3" PRIMARY KEY ("event_id")
)

BeforeExecute
-- Firebird

INSERT INTO "Issue1403Tests_3"
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

DROP TABLE "Issue1403Tests_3"

