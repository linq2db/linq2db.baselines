﻿BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TakeSkipClass')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TakeSkipClass"';
END

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TakeSkipClass')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "TakeSkipClass"
			(
				"Value" VarChar(10) CHARACTER SET UNICODE_FSS
			)
		';
END

BeforeExecute
-- Firebird4 Firebird
DECLARE @Value VarChar(6) -- String
SET     @Value = 'Value1'

INSERT INTO "TakeSkipClass"
(
	"Value"
)
VALUES
(
	CAST(@Value AS VarChar(6) CHARACTER SET UNICODE_FSS)
)

BeforeExecute
-- Firebird4 Firebird
DECLARE @Value VarChar(6) -- String
SET     @Value = 'Value2'

INSERT INTO "TakeSkipClass"
(
	"Value"
)
VALUES
(
	CAST(@Value AS VarChar(6) CHARACTER SET UNICODE_FSS)
)

BeforeExecute
-- Firebird4 Firebird
DECLARE @Value VarChar(6) -- String
SET     @Value = 'Value3'

INSERT INTO "TakeSkipClass"
(
	"Value"
)
VALUES
(
	CAST(@Value AS VarChar(6) CHARACTER SET UNICODE_FSS)
)

BeforeExecute
-- Firebird4 Firebird
DECLARE @Value VarChar(6) -- String
SET     @Value = 'Value4'

INSERT INTO "TakeSkipClass"
(
	"Value"
)
VALUES
(
	CAST(@Value AS VarChar(6) CHARACTER SET UNICODE_FSS)
)

BeforeExecute
-- Firebird4 Firebird
DECLARE @Value VarChar(6) -- String
SET     @Value = 'Value5'

INSERT INTO "TakeSkipClass"
(
	"Value"
)
VALUES
(
	CAST(@Value AS VarChar(6) CHARACTER SET UNICODE_FSS)
)

BeforeExecute
-- Firebird4 Firebird
DECLARE @Value VarChar(6) -- String
SET     @Value = 'Value6'

INSERT INTO "TakeSkipClass"
(
	"Value"
)
VALUES
(
	CAST(@Value AS VarChar(6) CHARACTER SET UNICODE_FSS)
)

BeforeExecute
-- Firebird4 Firebird
DECLARE @Value VarChar(6) -- String
SET     @Value = 'Value7'

INSERT INTO "TakeSkipClass"
(
	"Value"
)
VALUES
(
	CAST(@Value AS VarChar(6) CHARACTER SET UNICODE_FSS)
)

BeforeExecute
-- Firebird4 Firebird
DECLARE @Value VarChar(6) -- String
SET     @Value = 'Value8'

INSERT INTO "TakeSkipClass"
(
	"Value"
)
VALUES
(
	CAST(@Value AS VarChar(6) CHARACTER SET UNICODE_FSS)
)

BeforeExecute
-- Firebird4 Firebird

SELECT FIRST 1 SKIP 3
	"t1"."Value"
FROM
	"TakeSkipClass" "t1"
ORDER BY
	"t1"."Value"

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'TakeSkipClass')) THEN
		EXECUTE STATEMENT 'DROP TABLE "TakeSkipClass"';
END

