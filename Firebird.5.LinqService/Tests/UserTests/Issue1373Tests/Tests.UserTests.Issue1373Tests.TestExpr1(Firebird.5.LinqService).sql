﻿BeforeExecute
--  Firebird.5 Firebird4

INSERT INTO "Issue1373Tests"
(
	"Id",
	"Field1"
)
VALUES
(
	1,
	NULL
)

BeforeExecute
--  Firebird.5 Firebird4

INSERT INTO "Issue1373Tests"
(
	"Id",
	"Field1"
)
VALUES
(
	2,
	NULL
)

BeforeExecute
--  Firebird.5 Firebird4
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
--  Firebird.5 Firebird4

SELECT
	"t1"."Id",
	"t1"."Field1"
FROM
	"Issue1373Tests" "t1"
ORDER BY
	"t1"."Id"

