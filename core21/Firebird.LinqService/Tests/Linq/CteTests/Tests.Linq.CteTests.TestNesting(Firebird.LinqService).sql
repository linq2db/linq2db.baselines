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
-- Firebird

DROP TABLE "NestingC"

BeforeExecute
-- Firebird

DROP TABLE "NestingB"

BeforeExecute
-- Firebird

DROP TABLE "NestingA"

