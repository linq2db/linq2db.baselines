﻿BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'CreateIfNotExistsTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "CreateIfNotExistsTable"';
END

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'CreateIfNotExistsTable')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "CreateIfNotExistsTable"
			(
				"Id"    Int NOT NULL,
				"Value" Int NOT NULL
			)
		';
END

BeforeExecute
-- Firebird3 Firebird

INSERT INTO "CreateIfNotExistsTable"
(
	"Id",
	"Value"
)
VALUES
(
	1,
	2
)

BeforeExecute
-- Firebird3 Firebird

SELECT
	"t1"."Id",
	"t1"."Value"
FROM
	"CreateIfNotExistsTable" "t1"

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'CreateIfNotExistsTable')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "CreateIfNotExistsTable"
			(
				"Id"    Int NOT NULL,
				"Value" Int NOT NULL
			)
		';
END

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'CreateIfNotExistsTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "CreateIfNotExistsTable"';
END

