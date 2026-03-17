-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'tmptbl1')) THEN
		EXECUTE STATEMENT '
			CREATE GLOBAL TEMPORARY TABLE "tmptbl1"
			(
				ID      Int                                    NOT NULL,
				"Value" VarChar(255) CHARACTER SET UNICODE_FSS,

				CONSTRAINT "PK_tmptbl1" PRIMARY KEY (ID)
			)
			ON COMMIT PRESERVE ROWS
		';
END

-- Firebird.4 Firebird4

INSERT INTO "tmptbl1"
(
	ID,
	"Value"
)
SELECT 1,CAST('Value1' AS VarChar(255) CHARACTER SET UNICODE_FSS) FROM rdb$database UNION ALL
SELECT 2,NULL FROM rdb$database

-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'tmptbl2')) THEN
		EXECUTE STATEMENT '
			CREATE GLOBAL TEMPORARY TABLE "tmptbl2"
			(
				ID      Int                                    NOT NULL,
				"Value" VarChar(255) CHARACTER SET UNICODE_FSS NOT NULL,

				CONSTRAINT "PK_tmptbl2" PRIMARY KEY (ID)
			)
			ON COMMIT PRESERVE ROWS
		';
END

-- Firebird.4 Firebird4

INSERT INTO "tmptbl2"
(
	ID,
	"Value"
)
SELECT 1,CAST('Value1' AS VarChar(255) CHARACTER SET UNICODE_FSS) FROM rdb$database UNION ALL
SELECT 3,'Value2' FROM rdb$database

-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'tmptbl3')) THEN
		EXECUTE STATEMENT '
			CREATE GLOBAL TEMPORARY TABLE "tmptbl3"
			(
				ID      Int                                    NOT NULL,
				"Value" VarChar(255) CHARACTER SET UNICODE_FSS,

				CONSTRAINT "PK_tmptbl3" PRIMARY KEY (ID)
			)
			ON COMMIT PRESERVE ROWS
		';
END

-- Firebird.4 Firebird4

INSERT INTO "tmptbl3"
(
	ID,
	"Value"
)
SELECT 1,CAST('Value1' AS VarChar(255) CHARACTER SET UNICODE_FSS) FROM rdb$database UNION ALL
SELECT 2,NULL FROM rdb$database

-- Firebird.4 Firebird4

SELECT
	"t4".ID,
	"t4"."Value"
FROM
	"tmptbl1" "t2"
		LEFT JOIN "tmptbl2" "t3" ON "t2".ID = "t3".ID
		LEFT JOIN "tmptbl3" "t4" ON Coalesce("t3"."Value", "t2"."Value") = "t4"."Value" OR "t3"."Value" IS NULL AND "t2"."Value" IS NULL AND "t4"."Value" IS NULL

-- Firebird.4 Firebird4

SELECT
	"t1".ID,
	"t1"."Value"
FROM
	"tmptbl1" "t1"

-- Firebird.4 Firebird4

SELECT
	"t1".ID,
	"t1"."Value"
FROM
	"tmptbl2" "t1"

-- Firebird.4 Firebird4

SELECT
	"t1".ID,
	"t1"."Value"
FROM
	"tmptbl3" "t1"

-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'tmptbl3')) THEN
		EXECUTE STATEMENT 'DROP TABLE "tmptbl3"';
END

-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'tmptbl2')) THEN
		EXECUTE STATEMENT 'DROP TABLE "tmptbl2"';
END

-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'tmptbl1')) THEN
		EXECUTE STATEMENT 'DROP TABLE "tmptbl1"';
END

