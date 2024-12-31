BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Position')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Position"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Position')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Position"
			(
				"Group" Int NOT NULL,
				"Order" Int NOT NULL,
				"Id"    Int
			)
		';
END

BeforeExecute
-- Firebird.5 Firebird4

INSERT INTO "Position"
(
	"Group",
	"Order",
	"Id"
)
SELECT 7,10,5 FROM rdb$database UNION ALL
SELECT 7,20,6 FROM rdb$database UNION ALL
SELECT 7,30,NULL FROM rdb$database UNION ALL
SELECT 7,40,NULL FROM rdb$database

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @group Integer -- Int32
SET     @group = 7

SELECT
	"p"."Id",
	LAST_VALUE("p"."Id") OVER(ORDER BY "p"."Order")
FROM
	"Position" "p"
WHERE
	"p"."Group" = @group

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Position')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Position"';
END

