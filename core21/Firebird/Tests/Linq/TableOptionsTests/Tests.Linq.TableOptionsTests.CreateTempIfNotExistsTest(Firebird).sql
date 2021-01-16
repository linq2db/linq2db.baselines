﻿BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'CreateIfNotExistsTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "CreateIfNotExistsTable"';
END

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'CreateIfNotExistsTable')) THEN
		EXECUTE STATEMENT '
			CREATE GLOBAL TEMPORARY TABLE "CreateIfNotExistsTable"
			(
				"Id"    Int NOT NULL,
				"Value" Int NOT NULL
			)
			ON COMMIT PRESERVE ROWS
		';
END

BeforeExecute
-- Firebird

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
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'CreateIfNotExistsTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "CreateIfNotExistsTable"';
END

