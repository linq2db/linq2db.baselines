-- DB2 DB2.LUW DB2LUW
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
	CAST(@Field1 AS NVarChar(8168))
)

-- DB2 DB2.LUW DB2LUW
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
	CAST(@Field1 AS NVarChar(8168))
)

-- DB2 DB2.LUW DB2LUW
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
	CAST(@Field1 AS NVarChar(4))
)

-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Id",
	"t1"."Field1"
FROM
	"Issue1373Tests" "t1"
ORDER BY
	"t1"."Id"

