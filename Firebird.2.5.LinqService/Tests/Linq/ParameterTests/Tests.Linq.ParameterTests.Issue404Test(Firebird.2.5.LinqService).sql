BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Table404One')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Table404One"';
END

BeforeExecute
-- Firebird.2.5 Firebird

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
-- Firebird.2.5 Firebird
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
-- Firebird.2.5 Firebird
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
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Table404Two')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Table404Two"';
END

BeforeExecute
-- Firebird.2.5 Firebird

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
-- Firebird.2.5 Firebird
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
-- Firebird.2.5 Firebird
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
-- Firebird.2.5 Firebird
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
-- Firebird.2.5 Firebird
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
-- Firebird.2.5 Firebird
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
-- Firebird.2.5 Firebird
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
-- Firebird.2.5 Firebird

SELECT
	"m_1"."Id",
	"d"."Id",
	"d"."Usage",
	"d"."FirstTableId"
FROM
	(
		SELECT DISTINCT
			"t1"."Id"
		FROM
			"Table404One" "t1"
	) "m_1"
		INNER JOIN "Table404Two" "d" ON "m_1"."Id" = "d"."FirstTableId"

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"t1"."Id"
FROM
	"Table404One" "t1"

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @Values Integer -- Int32
SET     @Values = 0

SELECT
	"m_1"."Id",
	"d"."Id",
	"d"."Usage",
	"d"."FirstTableId"
FROM
	(
		SELECT DISTINCT
			"t1"."Id"
		FROM
			"Table404One" "t1"
	) "m_1"
		INNER JOIN "Table404Two" "d" ON "m_1"."Id" = "d"."FirstTableId"
WHERE
	"d"."Usage" = @Values

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"t1"."Id"
FROM
	"Table404One" "t1"

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @Values Integer -- Int32
SET     @Values = 1

SELECT
	"m_1"."Id",
	"d"."Id",
	"d"."Usage",
	"d"."FirstTableId"
FROM
	(
		SELECT DISTINCT
			"t1"."Id"
		FROM
			"Table404One" "t1"
	) "m_1"
		INNER JOIN "Table404Two" "d" ON "m_1"."Id" = "d"."FirstTableId"
WHERE
	"d"."Usage" = @Values

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"t1"."Id"
FROM
	"Table404One" "t1"

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Table404Two')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Table404Two"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Table404One')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Table404One"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Table404One')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Table404One"';
END

BeforeExecute
-- Firebird.2.5 Firebird

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
-- Firebird.2.5 Firebird
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
-- Firebird.2.5 Firebird
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
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Table404Two')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Table404Two"';
END

BeforeExecute
-- Firebird.2.5 Firebird

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
-- Firebird.2.5 Firebird
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
-- Firebird.2.5 Firebird
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
-- Firebird.2.5 Firebird
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
-- Firebird.2.5 Firebird
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
-- Firebird.2.5 Firebird
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
-- Firebird.2.5 Firebird
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
-- Firebird.2.5 Firebird

SELECT
	"m_1"."Id",
	"d"."Id",
	"d"."Usage",
	"d"."FirstTableId"
FROM
	(
		SELECT DISTINCT
			"t1"."Id"
		FROM
			"Table404One" "t1"
	) "m_1"
		INNER JOIN "Table404Two" "d" ON "m_1"."Id" = "d"."FirstTableId"

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"t1"."Id"
FROM
	"Table404One" "t1"

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @Values Integer -- Int32
SET     @Values = 0

SELECT
	"m_1"."Id",
	"d"."Id",
	"d"."Usage",
	"d"."FirstTableId"
FROM
	(
		SELECT DISTINCT
			"t1"."Id"
		FROM
			"Table404One" "t1"
	) "m_1"
		INNER JOIN "Table404Two" "d" ON "m_1"."Id" = "d"."FirstTableId"
WHERE
	"d"."Usage" = @Values

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"t1"."Id"
FROM
	"Table404One" "t1"

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @Values Integer -- Int32
SET     @Values = 1

SELECT
	"m_1"."Id",
	"d"."Id",
	"d"."Usage",
	"d"."FirstTableId"
FROM
	(
		SELECT DISTINCT
			"t1"."Id"
		FROM
			"Table404One" "t1"
	) "m_1"
		INNER JOIN "Table404Two" "d" ON "m_1"."Id" = "d"."FirstTableId"
WHERE
	"d"."Usage" = @Values

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"t1"."Id"
FROM
	"Table404One" "t1"

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Table404Two')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Table404Two"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Table404One')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Table404One"';
END

