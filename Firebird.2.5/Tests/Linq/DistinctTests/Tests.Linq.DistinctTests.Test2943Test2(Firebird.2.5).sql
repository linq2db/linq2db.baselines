BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'DistinctOrderByTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "DistinctOrderByTable"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'DistinctOrderByTable')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "DistinctOrderByTable"
			(
				"Id" Int                                    NOT NULL,
				F1   Int                                    NOT NULL,
				F2   VarChar(255) CHARACTER SET UNICODE_FSS,
				F3   Int                                    NOT NULL,

				CONSTRAINT "PK_DistinctOrderByTable" PRIMARY KEY ("Id")
			)
		';
END

BeforeExecute
-- Firebird.2.5 Firebird

INSERT INTO "DistinctOrderByTable"
(
	"Id",
	F1,
	F2,
	F3
)
SELECT 8,8,CAST('8' AS VarChar(255) CHARACTER SET UNICODE_FSS),5 FROM rdb$database UNION ALL
SELECT 3,3,'3',3 FROM rdb$database UNION ALL
SELECT 2,2,'2',1 FROM rdb$database UNION ALL
SELECT 6,3,'3',4 FROM rdb$database UNION ALL
SELECT 1,3,'3',7 FROM rdb$database UNION ALL
SELECT 5,5,'5',2 FROM rdb$database UNION ALL
SELECT 7,2,'2',8 FROM rdb$database UNION ALL
SELECT 4,4,'4',6 FROM rdb$database

BeforeExecute
-- Firebird.2.5 Firebird

SELECT DISTINCT
	"r".F1,
	"r".F2
FROM
	"DistinctOrderByTable" "r"
ORDER BY
	"r".F1 DESC

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'DistinctOrderByTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "DistinctOrderByTable"';
END

