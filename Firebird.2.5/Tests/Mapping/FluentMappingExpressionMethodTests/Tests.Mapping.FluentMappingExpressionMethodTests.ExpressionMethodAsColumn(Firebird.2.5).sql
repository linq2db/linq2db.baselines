BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'InstanceClass')) THEN
		EXECUTE STATEMENT 'DROP TABLE "InstanceClass"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'InstanceClass')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "InstanceClass"
			(
				"Id"    Int NOT NULL,
				"Value" Int NOT NULL
			)
		';
END

BeforeExecute
-- Firebird.2.5 Firebird

INSERT INTO "InstanceClass"
(
	"Id",
	"Value"
)
SELECT 1,101 FROM rdb$database UNION ALL
SELECT 2,102 FROM rdb$database UNION ALL
SELECT 3,103 FROM rdb$database UNION ALL
SELECT 4,104 FROM rdb$database UNION ALL
SELECT 5,105 FROM rdb$database UNION ALL
SELECT 6,106 FROM rdb$database UNION ALL
SELECT 7,107 FROM rdb$database UNION ALL
SELECT 8,108 FROM rdb$database UNION ALL
SELECT 9,109 FROM rdb$database UNION ALL
SELECT 10,110 FROM rdb$database UNION ALL
SELECT 11,111 FROM rdb$database UNION ALL
SELECT 12,112 FROM rdb$database UNION ALL
SELECT 13,113 FROM rdb$database UNION ALL
SELECT 14,114 FROM rdb$database UNION ALL
SELECT 15,115 FROM rdb$database UNION ALL
SELECT 16,116 FROM rdb$database UNION ALL
SELECT 17,117 FROM rdb$database UNION ALL
SELECT 18,118 FROM rdb$database UNION ALL
SELECT 19,119 FROM rdb$database UNION ALL
SELECT 20,120 FROM rdb$database

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"t1"."Id",
	"t1"."Value",
	'M' || "t1"."Id"
FROM
	"InstanceClass" "t1"

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'InstanceClass')) THEN
		EXECUTE STATEMENT 'DROP TABLE "InstanceClass"';
END

