BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Table404One')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Table404One"';
END

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Table404One')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Table404One"
			(
				"Id" Int NOT NULL
			)
		';
END

BeforeExecute
-- Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1

INSERT INTO "Table404One"
(
	"Id"
)
VALUES
(
	@Id
)

BeforeExecute
-- Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 2

INSERT INTO "Table404One"
(
	"Id"
)
VALUES
(
	@Id
)

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Table404Two')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Table404Two"';
END

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Table404Two')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Table404Two"
			(
				"Id"           Int NOT NULL,
				"Usage"        Int NOT NULL,
				"FirstTableId" Int NOT NULL
			)
		';
END

BeforeExecute
-- Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Usage Integer -- Int32
SET     @Usage = 0
DECLARE @FirstTableId Integer -- Int32
SET     @FirstTableId = 1

INSERT INTO "Table404Two"
(
	"Id",
	"Usage",
	"FirstTableId"
)
VALUES
(
	@Id,
	@Usage,
	@FirstTableId
)

BeforeExecute
-- Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Usage Integer -- Int32
SET     @Usage = 0
DECLARE @FirstTableId Integer -- Int32
SET     @FirstTableId = 1

INSERT INTO "Table404Two"
(
	"Id",
	"Usage",
	"FirstTableId"
)
VALUES
(
	@Id,
	@Usage,
	@FirstTableId
)

BeforeExecute
-- Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @Usage Integer -- Int32
SET     @Usage = 1
DECLARE @FirstTableId Integer -- Int32
SET     @FirstTableId = 1

INSERT INTO "Table404Two"
(
	"Id",
	"Usage",
	"FirstTableId"
)
VALUES
(
	@Id,
	@Usage,
	@FirstTableId
)

BeforeExecute
-- Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 4
DECLARE @Usage Integer -- Int32
SET     @Usage = 0
DECLARE @FirstTableId Integer -- Int32
SET     @FirstTableId = 2

INSERT INTO "Table404Two"
(
	"Id",
	"Usage",
	"FirstTableId"
)
VALUES
(
	@Id,
	@Usage,
	@FirstTableId
)

BeforeExecute
-- Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 5
DECLARE @Usage Integer -- Int32
SET     @Usage = 1
DECLARE @FirstTableId Integer -- Int32
SET     @FirstTableId = 2

INSERT INTO "Table404Two"
(
	"Id",
	"Usage",
	"FirstTableId"
)
VALUES
(
	@Id,
	@Usage,
	@FirstTableId
)

BeforeExecute
-- Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 6
DECLARE @Usage Integer -- Int32
SET     @Usage = 1
DECLARE @FirstTableId Integer -- Int32
SET     @FirstTableId = 2

INSERT INTO "Table404Two"
(
	"Id",
	"Usage",
	"FirstTableId"
)
VALUES
(
	@Id,
	@Usage,
	@FirstTableId
)

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
DECLARE @Usage Integer -- Int32
SET     @Usage = 0

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
		INNER JOIN "Table404Two" "v" ON "v"."Usage" = @Usage AND "v"."FirstTableId" = "key_data_result"."Id"

BeforeExecute
-- Firebird

SELECT
	"c_1"."Id"
FROM
	"Table404One" "c_1"

BeforeExecute
-- Firebird
DECLARE @Usage Integer -- Int32
SET     @Usage = 1

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
		INNER JOIN "Table404Two" "v" ON "v"."Usage" = @Usage AND "v"."FirstTableId" = "key_data_result"."Id"

BeforeExecute
-- Firebird

SELECT
	"c_1"."Id"
FROM
	"Table404One" "c_1"

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Table404Two')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Table404Two"';
END

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Table404One')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Table404One"';
END

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Table404One')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Table404One"';
END

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Table404One')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Table404One"
			(
				"Id" Int NOT NULL
			)
		';
END

BeforeExecute
-- Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1

INSERT INTO "Table404One"
(
	"Id"
)
VALUES
(
	@Id
)

BeforeExecute
-- Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 2

INSERT INTO "Table404One"
(
	"Id"
)
VALUES
(
	@Id
)

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Table404Two')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Table404Two"';
END

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Table404Two')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Table404Two"
			(
				"Id"           Int NOT NULL,
				"Usage"        Int NOT NULL,
				"FirstTableId" Int NOT NULL
			)
		';
END

BeforeExecute
-- Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Usage Integer -- Int32
SET     @Usage = 0
DECLARE @FirstTableId Integer -- Int32
SET     @FirstTableId = 1

INSERT INTO "Table404Two"
(
	"Id",
	"Usage",
	"FirstTableId"
)
VALUES
(
	@Id,
	@Usage,
	@FirstTableId
)

BeforeExecute
-- Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Usage Integer -- Int32
SET     @Usage = 0
DECLARE @FirstTableId Integer -- Int32
SET     @FirstTableId = 1

INSERT INTO "Table404Two"
(
	"Id",
	"Usage",
	"FirstTableId"
)
VALUES
(
	@Id,
	@Usage,
	@FirstTableId
)

BeforeExecute
-- Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @Usage Integer -- Int32
SET     @Usage = 1
DECLARE @FirstTableId Integer -- Int32
SET     @FirstTableId = 1

INSERT INTO "Table404Two"
(
	"Id",
	"Usage",
	"FirstTableId"
)
VALUES
(
	@Id,
	@Usage,
	@FirstTableId
)

BeforeExecute
-- Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 4
DECLARE @Usage Integer -- Int32
SET     @Usage = 0
DECLARE @FirstTableId Integer -- Int32
SET     @FirstTableId = 2

INSERT INTO "Table404Two"
(
	"Id",
	"Usage",
	"FirstTableId"
)
VALUES
(
	@Id,
	@Usage,
	@FirstTableId
)

BeforeExecute
-- Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 5
DECLARE @Usage Integer -- Int32
SET     @Usage = 1
DECLARE @FirstTableId Integer -- Int32
SET     @FirstTableId = 2

INSERT INTO "Table404Two"
(
	"Id",
	"Usage",
	"FirstTableId"
)
VALUES
(
	@Id,
	@Usage,
	@FirstTableId
)

BeforeExecute
-- Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 6
DECLARE @Usage Integer -- Int32
SET     @Usage = 1
DECLARE @FirstTableId Integer -- Int32
SET     @FirstTableId = 2

INSERT INTO "Table404Two"
(
	"Id",
	"Usage",
	"FirstTableId"
)
VALUES
(
	@Id,
	@Usage,
	@FirstTableId
)

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
DECLARE @Usage Integer -- Int32
SET     @Usage = 0

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
		INNER JOIN "Table404Two" "v" ON "v"."Usage" = @Usage AND "v"."FirstTableId" = "key_data_result"."Id"

BeforeExecute
-- Firebird

SELECT
	"c_1"."Id"
FROM
	"Table404One" "c_1"

BeforeExecute
-- Firebird
DECLARE @Usage Integer -- Int32
SET     @Usage = 1

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
		INNER JOIN "Table404Two" "v" ON "v"."Usage" = @Usage AND "v"."FirstTableId" = "key_data_result"."Id"

BeforeExecute
-- Firebird

SELECT
	"c_1"."Id"
FROM
	"Table404One" "c_1"

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Table404Two')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Table404Two"';
END

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Table404One')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Table404One"';
END

