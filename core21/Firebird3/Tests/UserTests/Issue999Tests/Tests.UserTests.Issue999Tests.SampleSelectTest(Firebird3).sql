BeforeExecute
-- Firebird3 Firebird

CREATE TABLE "User"
(
	"city"      VarChar(255) CHARACTER SET UNICODE_FSS,
	"user_name" VarChar(255) CHARACTER SET UNICODE_FSS,
	"street"    VarChar(255) CHARACTER SET UNICODE_FSS
)

BeforeExecute
-- Firebird3 Firebird

SELECT 
	"u"."city"
FROM
	"User" "u"

BeforeExecute
-- Firebird3 Firebird

SELECT 
	"u"."street"
FROM
	"User" "u"

BeforeExecute
-- Firebird3 Firebird

DROP TABLE "User"

