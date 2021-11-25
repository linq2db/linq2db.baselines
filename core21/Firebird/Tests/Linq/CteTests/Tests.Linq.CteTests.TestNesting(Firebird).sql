BeforeExecute
-- Firebird

CREATE TABLE "NestingA"
(
	"Property1" VarChar(255) CHARACTER SET UNICODE_FSS
)

BeforeExecute
-- Firebird

CREATE TABLE "NestingB"
(
	"Property1" VarChar(255) CHARACTER SET UNICODE_FSS,
	"Property2" VarChar(255) CHARACTER SET UNICODE_FSS
)

BeforeExecute
-- Firebird

CREATE TABLE "NestingC"
(
	"Property1" VarChar(255) CHARACTER SET UNICODE_FSS,
	"Property2" VarChar(255) CHARACTER SET UNICODE_FSS,
	"Property3" VarChar(255) CHARACTER SET UNICODE_FSS
)

BeforeExecute
-- Firebird

WITH CTE_1 ("Property2")
AS
(
	SELECT
		"a"."Property2"
	FROM
		"NestingC" "a"
)
SELECT
	"c1"."Property2",
	"t_1"."Property2",
	"t_1"."Property3"
FROM
	CTE_1 "c1"
		CROSS JOIN "NestingC" "t"
		CROSS JOIN "NestingC" "t_1"

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'NestingC')) THEN
		EXECUTE STATEMENT 'DROP TABLE "NestingC"';
END

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'NestingB')) THEN
		EXECUTE STATEMENT 'DROP TABLE "NestingB"';
END

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'NestingA')) THEN
		EXECUTE STATEMENT 'DROP TABLE "NestingA"';
END

