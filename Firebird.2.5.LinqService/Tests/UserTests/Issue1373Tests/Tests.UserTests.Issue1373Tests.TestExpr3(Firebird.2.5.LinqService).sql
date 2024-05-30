BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue1373Tests')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue1373Tests"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue1373Tests')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Issue1373Tests"
			(
				"Id"     Int                                    NOT NULL,
				"Field1" VarChar(255) CHARACTER SET UNICODE_FSS,

				CONSTRAINT "PK_Issue1373Tests" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @Field1 VarChar -- String
SET     @Field1 = NULL

INSERT INTO "Issue1373Tests"
(
	"Id",
	"Field1"
)
VALUES
(
	1,
	CAST(@Field1 AS VARCHAR(1))
)

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @Field1 VarChar -- String
SET     @Field1 = NULL

INSERT INTO "Issue1373Tests"
(
	"Id",
	"Field1"
)
VALUES
(
	2,
	CAST(@Field1 AS VARCHAR(1))
)

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @Field1 VarChar(4) -- String
SET     @Field1 = 'test'

INSERT INTO "Issue1373Tests"
(
	"Id",
	"Field1"
)
VALUES
(
	3,
	CAST(@Field1 AS VARCHAR(4))
)

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"t1"."Id",
	"t1"."Field1"
FROM
	"Issue1373Tests" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue1373Tests')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue1373Tests"';
END

