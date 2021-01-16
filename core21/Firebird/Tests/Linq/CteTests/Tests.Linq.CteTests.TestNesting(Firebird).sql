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

DROP TABLE "NestingC"

BeforeExecute
-- Firebird

DROP TABLE "NestingB"

BeforeExecute
-- Firebird

DROP TABLE "NestingA"

