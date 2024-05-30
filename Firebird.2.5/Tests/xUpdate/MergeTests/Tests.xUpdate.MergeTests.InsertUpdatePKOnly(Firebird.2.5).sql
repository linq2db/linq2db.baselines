BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'PKOnlyTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "PKOnlyTable"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'PKOnlyTable')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "PKOnlyTable"
			(
				ID Int NOT NULL,

				CONSTRAINT "PK_PKOnlyTable" PRIMARY KEY (ID)
			)
		';
END

BeforeExecute
-- Firebird.2.5 Firebird

INSERT INTO "PKOnlyTable"
(
	ID
)
SELECT 2 FROM rdb$database

BeforeExecute
-- Firebird.2.5 Firebird

MERGE INTO "PKOnlyTable" "Target"
USING (
	SELECT 1 AS "source_ID" FROM rdb$database
	UNION ALL
	SELECT 2 FROM rdb$database
	UNION ALL
	SELECT 3 FROM rdb$database) "Source"
(
	"source_ID"
)
ON ("Target".ID = "Source"."source_ID")

WHEN NOT MATCHED THEN
INSERT
(
	ID
)
VALUES
(
	"Source"."source_ID"
)

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"t1".ID
FROM
	"PKOnlyTable" "t1"
ORDER BY
	"t1".ID

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'PKOnlyTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "PKOnlyTable"';
END

