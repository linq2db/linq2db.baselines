BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'DistinctOrderByTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "DistinctOrderByTable"';
END

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'DistinctOrderByTable')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "DistinctOrderByTable"
			(
				"Id" Int                                    NOT NULL,
				F1   Int                                    NOT NULL,
				F2   VarChar(255) CHARACTER SET UNICODE_FSS,

				CONSTRAINT "PK_DistinctOrderByTable" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird

INSERT INTO "DistinctOrderByTable"
(
	"Id",
	F1,
	F2
)
SELECT 8,8,'8' FROM rdb$database UNION ALL
SELECT 3,3,'3' FROM rdb$database UNION ALL
SELECT 2,2,'2' FROM rdb$database UNION ALL
SELECT 6,3,'3' FROM rdb$database UNION ALL
SELECT 1,3,'3' FROM rdb$database UNION ALL
SELECT 5,5,'5' FROM rdb$database UNION ALL
SELECT 7,2,'2' FROM rdb$database UNION ALL
SELECT 4,4,'4' FROM rdb$database

BeforeExecute
-- Firebird
DECLARE @take Integer -- Int32
SET     @take = 2
DECLARE @skip Integer -- Int32
SET     @skip = 1

SELECT FIRST @take SKIP @skip
	"t2".F2
FROM
	(
		SELECT DISTINCT
			"t1".F1,
			"t1".F2
		FROM
			"DistinctOrderByTable" "t1"
		ORDER BY
			"t1".F1 DESC
	) "t2"

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'DistinctOrderByTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "DistinctOrderByTable"';
END

