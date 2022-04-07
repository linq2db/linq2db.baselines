﻿BeforeExecute
-- Firebird4 Firebird

CREATE TABLE "NestingA"
(
	"Property1" VarChar(255) CHARACTER SET UNICODE_FSS
)

BeforeExecute
-- Firebird4 Firebird

CREATE TABLE "NestingB"
(
	"Property1" VarChar(255) CHARACTER SET UNICODE_FSS,
	"Property2" VarChar(255) CHARACTER SET UNICODE_FSS
)

BeforeExecute
-- Firebird4 Firebird

CREATE TABLE "NestingC"
(
	"Property1" VarChar(255) CHARACTER SET UNICODE_FSS,
	"Property2" VarChar(255) CHARACTER SET UNICODE_FSS,
	"Property3" VarChar(255) CHARACTER SET UNICODE_FSS
)

BeforeExecute
-- Firebird4 Firebird

WITH CTE_1 ("Property2")
AS
(
	SELECT
		"a"."Property2"
	FROM
		"NestingC" "a"
)
SELECT
	"c2"."Property1",
	"t_1"."Property2",
	"t_1"."Property3"
FROM
	(
		SELECT
			"c1"."Property2" as "Property1"
		FROM
			CTE_1 "c1",
			"NestingC" "t"
	) "c2",
	"NestingC" "t_1"

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'NestingC')) THEN
		EXECUTE STATEMENT 'DROP TABLE "NestingC"';
END

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'NestingB')) THEN
		EXECUTE STATEMENT 'DROP TABLE "NestingB"';
END

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'NestingA')) THEN
		EXECUTE STATEMENT 'DROP TABLE "NestingA"';
END

