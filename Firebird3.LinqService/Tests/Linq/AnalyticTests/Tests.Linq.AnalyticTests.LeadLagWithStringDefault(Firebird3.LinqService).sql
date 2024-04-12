﻿BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue1799Table3')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue1799Table3"';
END

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue1799Table3')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Issue1799Table3"
			(
				"ProcessID"   Int                                    NOT NULL,
				"ProcessName" VarChar(255) CHARACTER SET UNICODE_FSS
			)
		';
END

BeforeExecute
-- Firebird3 Firebird
DECLARE @ProcessID Integer -- Int32
SET     @ProcessID = 1
DECLARE @ProcessName VarChar(3) -- String
SET     @ProcessName = 'One'

INSERT INTO "Issue1799Table3"
(
	"ProcessID",
	"ProcessName"
)
VALUES
(
	CAST(@ProcessID AS Int),
	CAST(@ProcessName AS VARCHAR(3))
)

BeforeExecute
-- Firebird3 Firebird
DECLARE @ProcessID Integer -- Int32
SET     @ProcessID = 2
DECLARE @ProcessName VarChar(3) -- String
SET     @ProcessName = 'Two'

INSERT INTO "Issue1799Table3"
(
	"ProcessID",
	"ProcessName"
)
VALUES
(
	CAST(@ProcessID AS Int),
	CAST(@ProcessName AS VARCHAR(3))
)

BeforeExecute
-- Firebird3 Firebird

SELECT
	LEAD("p"."ProcessName", 1, 'None') OVER(ORDER BY "p"."ProcessID")
FROM
	"Issue1799Table3" "p"

BeforeExecute
-- Firebird3 Firebird

SELECT
	LAG("p"."ProcessName", 1, 'None') OVER(ORDER BY "p"."ProcessID")
FROM
	"Issue1799Table3" "p"

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue1799Table3')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue1799Table3"';
END

