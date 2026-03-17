-- Firebird.3 Firebird3
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

-- Firebird.3 Firebird3
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

-- Firebird.3 Firebird3
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

-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Field1"
FROM
	"Issue1373Tests" "t1"
ORDER BY
	"t1"."Id"

