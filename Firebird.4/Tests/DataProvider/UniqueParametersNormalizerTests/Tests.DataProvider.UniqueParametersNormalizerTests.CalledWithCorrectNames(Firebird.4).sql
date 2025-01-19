BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)
DECLARE @search VarChar(4) -- String
SET     @search = 'test'

SELECT
	"row1"."Id"
FROM
	"table1" "row1"
		INNER JOIN "table2" "row2" ON "row1"."Id" = "row2"."Table1Id"
WHERE
	"row2"."Field2" STARTING WITH 'test'
UNION
SELECT
	"row1_1"."Id"
FROM
	"table1" "row1_1"
		INNER JOIN "table3" "row3" ON "row1_1"."Id" = "row3"."Table1Id"
WHERE
	"row3"."Field3" = @search
UNION
SELECT
	"row1_2"."Id"
FROM
	"table1" "row1_2"
WHERE
	"row1_2"."Field1" STARTING WITH 'test'

BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'table3')) THEN
		EXECUTE STATEMENT 'DROP TABLE "table3"';
END

BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'table2')) THEN
		EXECUTE STATEMENT 'DROP TABLE "table2"';
END

BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'table1')) THEN
		EXECUTE STATEMENT 'DROP TABLE "table1"';
END

