﻿BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'SampleClass')) THEN
		EXECUTE STATEMENT 'DROP TABLE "SampleClass"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'SampleClass')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "SampleClass"
			(
				"Id"        Int NOT NULL,
				"NullValue" Int
			)
		';
END

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"a_1".RECORDNAME,
	"a_1"."NullValue"
FROM
	(
		SELECT
			"a"."Id" as RECORDNAME,
			CASE
				WHEN "a"."NullValue" IS NOT NULL THEN "a"."NullValue"
				ELSE 0
			END as KEYNUMB,
			"a"."NullValue"
		FROM
			"SampleClass" "a"
	) "a_1"
WHERE
	("a_1".RECORDNAME = 0 AND "a_1".KEYNUMB = 0 OR "a_1".RECORDNAME = 1 AND "a_1".KEYNUMB = 1 OR "a_1".RECORDNAME = 2 AND "a_1".KEYNUMB = 2)

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'SampleClass')) THEN
		EXECUTE STATEMENT 'DROP TABLE "SampleClass"';
END

