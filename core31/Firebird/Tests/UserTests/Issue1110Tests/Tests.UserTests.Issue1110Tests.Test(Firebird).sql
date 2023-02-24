﻿BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue1110TB')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue1110TB"';
END

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue1110TB')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Issue1110TB"
			(
				"Id"        Int       NOT NULL,
				"TimeStamp" TimeStamp NOT NULL,

				CONSTRAINT "PK_Issue1110TB" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird
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
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue1110TB')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue1110TB"';
END

