﻿BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'CreateTableTypes')) THEN
		EXECUTE STATEMENT 'DROP TABLE "CreateTableTypes"';
END

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'CreateTableTypes')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "CreateTableTypes"
			(
				"Id"               Int       NOT NULL,
				"DateTimeNullable" TimeStamp
			)
		';
END

BeforeExecute
-- Firebird3 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @DateTimeNullable TimeStamp -- DateTime
SET     @DateTimeNullable = NULL

INSERT INTO "CreateTableTypes"
(
	"Id",
	"DateTimeNullable"
)
VALUES
(
	CAST(@Id AS Int),
	CAST(@DateTimeNullable AS TimeStamp)
)

BeforeExecute
-- Firebird3 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @DateTimeNullable TimeStamp -- DateTime
SET     @DateTimeNullable = CAST('2018-11-25 01:02:03' AS timestamp)

INSERT INTO "CreateTableTypes"
(
	"Id",
	"DateTimeNullable"
)
VALUES
(
	CAST(@Id AS Int),
	CAST(@DateTimeNullable AS TimeStamp)
)

BeforeExecute
-- Firebird3 Firebird

SELECT
	"t1"."Id",
	"t1"."DateTimeNullable"
FROM
	"CreateTableTypes" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'CreateTableTypes')) THEN
		EXECUTE STATEMENT 'DROP TABLE "CreateTableTypes"';
END

