BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'PKOnlyTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "PKOnlyTable"';
END

BeforeExecute
-- Firebird.4 Firebird4

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
-- Firebird.4 Firebird4
DECLARE @ID Integer -- Int32
SET     @ID = 2

INSERT INTO "PKOnlyTable"
(
	ID
)
VALUES
(
	@ID
)

BeforeExecute
-- Firebird.4 Firebird4

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
-- Firebird.4 Firebird4

SELECT
	"t1".ID
FROM
	"PKOnlyTable" "t1"
ORDER BY
	"t1".ID

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'PKOnlyTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "PKOnlyTable"';
END

