BeforeExecute
-- Firebird

CREATE TABLE "Issue1373Tests"
(
	"Id"     Int                                    NOT NULL,
	"Field1" VarChar(255) CHARACTER SET UNICODE_FSS,

	CONSTRAINT "PK_Issue1373Tests" PRIMARY KEY ("Id")
)

BeforeExecute
-- Firebird
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
	@Field1
)

BeforeExecute
-- Firebird
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
	@Field1
)

BeforeExecute
-- Firebird
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
	@Field1
)

BeforeExecute
-- Firebird

SELECT 
	"t1"."Id", 
	"t1"."Field1"
FROM
	"Issue1373Tests" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- Firebird

DROP TABLE "Issue1373Tests"

