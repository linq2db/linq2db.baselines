BeforeExecute
-- Firebird3 Firebird

CREATE TABLE "Issue1110TB"
(
	"Id"        Int       NOT NULL,
	"TimeStamp" TimeStamp NOT NULL,

	CONSTRAINT "PK_Issue1110TB" PRIMARY KEY ("Id")
)

BeforeExecute
-- Firebird3 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 10
DECLARE @TimeStamp_1 TimeStamp -- DateTime
SET     @TimeStamp_1 = CAST('2020-02-29 17:54:55.123' AS timestamp)

INSERT INTO "Issue1110TB"
(
	"Id",
	"TimeStamp"
)
VALUES
(
	@Id,
	@TimeStamp_1
)

BeforeExecute
-- Firebird3 Firebird

DROP TABLE "Issue1110TB"

