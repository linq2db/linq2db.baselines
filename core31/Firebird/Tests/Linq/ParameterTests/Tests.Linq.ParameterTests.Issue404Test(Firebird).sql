BeforeExecute
-- Firebird

CREATE TABLE "Table404One"
(
	"Id" Int NOT NULL
)

BeforeExecute
-- Firebird

INSERT INTO "Table404One"
(
	"Id"
)
SELECT 1 FROM rdb$database UNION ALL
SELECT 2 FROM rdb$database

BeforeExecute
-- Firebird

CREATE TABLE "Table404Two"
(
	"Id"           Int NOT NULL,
	"Usage"        Int NOT NULL,
	"FirstTableId" Int NOT NULL
)

BeforeExecute
-- Firebird

INSERT INTO "Table404Two"
(
	"Id",
	"Usage",
	"FirstTableId"
)
SELECT 1,0,1 FROM rdb$database UNION ALL
SELECT 2,0,1 FROM rdb$database UNION ALL
SELECT 3,1,1 FROM rdb$database UNION ALL
SELECT 4,0,2 FROM rdb$database UNION ALL
SELECT 5,1,2 FROM rdb$database UNION ALL
SELECT 6,1,2 FROM rdb$database

BeforeExecute
-- Firebird

SELECT
	"key_data_result"."Id",
	"v"."Id",
	"v"."Usage",
	"v"."FirstTableId"
FROM
	(
		SELECT DISTINCT
			"c_1"."Id"
		FROM
			"Table404One" "c_1"
	) "key_data_result"
		INNER JOIN "Table404Two" "v" ON "v"."FirstTableId" = "key_data_result"."Id"

BeforeExecute
-- Firebird

SELECT
	"c_1"."Id"
FROM
	"Table404One" "c_1"

BeforeExecute
-- Firebird
DECLARE @Usage_2 Integer -- Int32
SET     @Usage_2 = 0

SELECT
	"key_data_result"."Id",
	"v"."Id",
	"v"."Usage",
	"v"."FirstTableId"
FROM
	(
		SELECT DISTINCT
			"c_1"."Id"
		FROM
			"Table404One" "c_1"
	) "key_data_result"
		INNER JOIN "Table404Two" "v" ON "v"."Usage" = @Usage_2 AND "v"."FirstTableId" = "key_data_result"."Id"

BeforeExecute
-- Firebird

SELECT
	"c_1"."Id"
FROM
	"Table404One" "c_1"

BeforeExecute
-- Firebird
DECLARE @Usage_2 Integer -- Int32
SET     @Usage_2 = 1

SELECT
	"key_data_result"."Id",
	"v"."Id",
	"v"."Usage",
	"v"."FirstTableId"
FROM
	(
		SELECT DISTINCT
			"c_1"."Id"
		FROM
			"Table404One" "c_1"
	) "key_data_result"
		INNER JOIN "Table404Two" "v" ON "v"."Usage" = @Usage_2 AND "v"."FirstTableId" = "key_data_result"."Id"

BeforeExecute
-- Firebird

SELECT
	"c_1"."Id"
FROM
	"Table404One" "c_1"

BeforeExecute
-- Firebird

DROP TABLE "Table404Two"

BeforeExecute
-- Firebird

DROP TABLE "Table404One"

BeforeExecute
-- Firebird

CREATE TABLE "Table404One"
(
	"Id" Int NOT NULL
)

BeforeExecute
-- Firebird

INSERT INTO "Table404One"
(
	"Id"
)
SELECT 1 FROM rdb$database UNION ALL
SELECT 2 FROM rdb$database

BeforeExecute
-- Firebird

CREATE TABLE "Table404Two"
(
	"Id"           Int NOT NULL,
	"Usage"        Int NOT NULL,
	"FirstTableId" Int NOT NULL
)

BeforeExecute
-- Firebird

INSERT INTO "Table404Two"
(
	"Id",
	"Usage",
	"FirstTableId"
)
SELECT 1,0,1 FROM rdb$database UNION ALL
SELECT 2,0,1 FROM rdb$database UNION ALL
SELECT 3,1,1 FROM rdb$database UNION ALL
SELECT 4,0,2 FROM rdb$database UNION ALL
SELECT 5,1,2 FROM rdb$database UNION ALL
SELECT 6,1,2 FROM rdb$database

BeforeExecute
-- Firebird

SELECT
	"key_data_result"."Id",
	"v"."Id",
	"v"."Usage",
	"v"."FirstTableId"
FROM
	(
		SELECT DISTINCT
			"c_1"."Id"
		FROM
			"Table404One" "c_1"
	) "key_data_result"
		INNER JOIN "Table404Two" "v" ON "v"."FirstTableId" = "key_data_result"."Id"

BeforeExecute
-- Firebird

SELECT
	"c_1"."Id"
FROM
	"Table404One" "c_1"

BeforeExecute
-- Firebird
DECLARE @Usage_2 Integer -- Int32
SET     @Usage_2 = 0

SELECT
	"key_data_result"."Id",
	"v"."Id",
	"v"."Usage",
	"v"."FirstTableId"
FROM
	(
		SELECT DISTINCT
			"c_1"."Id"
		FROM
			"Table404One" "c_1"
	) "key_data_result"
		INNER JOIN "Table404Two" "v" ON "v"."Usage" = @Usage_2 AND "v"."FirstTableId" = "key_data_result"."Id"

BeforeExecute
-- Firebird

SELECT
	"c_1"."Id"
FROM
	"Table404One" "c_1"

BeforeExecute
-- Firebird
DECLARE @Usage_2 Integer -- Int32
SET     @Usage_2 = 1

SELECT
	"key_data_result"."Id",
	"v"."Id",
	"v"."Usage",
	"v"."FirstTableId"
FROM
	(
		SELECT DISTINCT
			"c_1"."Id"
		FROM
			"Table404One" "c_1"
	) "key_data_result"
		INNER JOIN "Table404Two" "v" ON "v"."Usage" = @Usage_2 AND "v"."FirstTableId" = "key_data_result"."Id"

BeforeExecute
-- Firebird

SELECT
	"c_1"."Id"
FROM
	"Table404One" "c_1"

BeforeExecute
-- Firebird

DROP TABLE "Table404Two"

BeforeExecute
-- Firebird

DROP TABLE "Table404One"

