﻿BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'MasterClass')) THEN
		EXECUTE STATEMENT 'DROP TABLE "MasterClass"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'MasterClass')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "MasterClass"
			(
				"Id1"        Int                                    NOT NULL,
				"Id2"        Int                                    NOT NULL,
				"Value"      VarChar(255) CHARACTER SET UNICODE_FSS,
				"ByteValues" BLOB,

				CONSTRAINT "PK_MasterClass" PRIMARY KEY ("Id1", "Id2")
			)
		';
END

BeforeExecute
-- Firebird.4 Firebird4

INSERT INTO "MasterClass"
(
	"Id1",
	"Id2",
	"Value",
	"ByteValues"
)
SELECT 1,1,CAST('Str1' AS VarChar(255) CHARACTER SET UNICODE_FSS),NULL FROM rdb$database UNION ALL
SELECT 2,2,'Str2',NULL FROM rdb$database UNION ALL
SELECT 3,3,'Str3',NULL FROM rdb$database UNION ALL
SELECT 4,4,'Str4',NULL FROM rdb$database UNION ALL
SELECT 5,5,'Str5',NULL FROM rdb$database UNION ALL
SELECT 6,6,'Str6',NULL FROM rdb$database UNION ALL
SELECT 7,7,'Str7',NULL FROM rdb$database UNION ALL
SELECT 8,8,'Str8',NULL FROM rdb$database UNION ALL
SELECT 9,9,'Str9',NULL FROM rdb$database UNION ALL
SELECT 10,10,'Str10',NULL FROM rdb$database

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'DetailClass')) THEN
		EXECUTE STATEMENT 'DROP TABLE "DetailClass"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'DetailClass')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "DetailClass"
			(
				"DetailId"    Int                                    NOT NULL,
				"MasterId"    Int,
				"DetailValue" VarChar(255) CHARACTER SET UNICODE_FSS,

				CONSTRAINT "PK_DetailClass" PRIMARY KEY ("DetailId")
			)
		';
END

BeforeExecute
-- Firebird.4 Firebird4

INSERT INTO "DetailClass"
(
	"DetailId",
	"MasterId",
	"DetailValue"
)
SELECT 1001,1,CAST('DetailValue10001' AS VarChar(255) CHARACTER SET UNICODE_FSS) FROM rdb$database UNION ALL
SELECT 3001,3,'DetailValue30001' FROM rdb$database UNION ALL
SELECT 3002,3,'DetailValue30002' FROM rdb$database UNION ALL
SELECT 3003,3,'DetailValue30003' FROM rdb$database UNION ALL
SELECT 5001,5,'DetailValue50001' FROM rdb$database UNION ALL
SELECT 5002,5,'DetailValue50002' FROM rdb$database UNION ALL
SELECT 5003,5,'DetailValue50003' FROM rdb$database UNION ALL
SELECT 5004,5,'DetailValue50004' FROM rdb$database UNION ALL
SELECT 5005,5,'DetailValue50005' FROM rdb$database UNION ALL
SELECT 7001,7,'DetailValue70001' FROM rdb$database UNION ALL
SELECT 7002,7,'DetailValue70002' FROM rdb$database UNION ALL
SELECT 7003,7,'DetailValue70003' FROM rdb$database UNION ALL
SELECT 7004,7,'DetailValue70004' FROM rdb$database UNION ALL
SELECT 7005,7,'DetailValue70005' FROM rdb$database UNION ALL
SELECT 7006,7,'DetailValue70006' FROM rdb$database UNION ALL
SELECT 7007,7,'DetailValue70007' FROM rdb$database UNION ALL
SELECT 9001,9,'DetailValue90001' FROM rdb$database UNION ALL
SELECT 9002,9,'DetailValue90002' FROM rdb$database UNION ALL
SELECT 9003,9,'DetailValue90003' FROM rdb$database UNION ALL
SELECT 9004,9,'DetailValue90004' FROM rdb$database UNION ALL
SELECT 9005,9,'DetailValue90005' FROM rdb$database UNION ALL
SELECT 9006,9,'DetailValue90006' FROM rdb$database UNION ALL
SELECT 9007,9,'DetailValue90007' FROM rdb$database UNION ALL
SELECT 9008,9,'DetailValue90008' FROM rdb$database UNION ALL
SELECT 9009,9,'DetailValue90009' FROM rdb$database

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"t3".SUM_1,
	"t6".COUNT_1
FROM
	"MasterClass" "m_1"
		LEFT JOIN LATERAL (
			SELECT
				SUM("t2"."DetailId") as SUM_1
			FROM
				(
					SELECT
						"t1"."DetailId"
					FROM
						(
							SELECT DISTINCT
								"a_Details"."DetailId"
							FROM
								"DetailClass" "a_Details"
							WHERE
								"m_1"."Id1" = "a_Details"."MasterId"
						) "t1"
					ORDER BY
						"t1"."DetailId"
					OFFSET 1 ROWS FETCH NEXT 5 ROWS ONLY 
				) "t2"
		) "t3" ON 1=1
		LEFT JOIN LATERAL (
			SELECT
				COUNT(*) as COUNT_1
			FROM
				(
					SELECT
						*
					FROM
						(
							SELECT DISTINCT
								"a_Details_1"."DetailValue"
							FROM
								"DetailClass" "a_Details_1"
							WHERE
								"m_1"."Id1" = "a_Details_1"."MasterId"
						) "t4"
					ORDER BY
						"t4"."DetailValue"
					OFFSET 1 ROWS FETCH NEXT 2 ROWS ONLY 
				) "t5"
		) "t6" ON 1=1

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"m_1"."Id1",
	"d"."DetailId",
	"d"."MasterId",
	"d"."DetailValue"
FROM
	(
		SELECT DISTINCT
			"t1"."Id1"
		FROM
			"MasterClass" "t1"
	) "m_1"
		INNER JOIN "DetailClass" "d" ON "m_1"."Id1" = "d"."MasterId"

BeforeExecute
DisposeTransaction
BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"t1"."Id1",
	"t1"."Id2",
	"t1"."Value",
	"t1"."ByteValues"
FROM
	"MasterClass" "t1"

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'DetailClass')) THEN
		EXECUTE STATEMENT 'DROP TABLE "DetailClass"';
END

BeforeExecute
-- Firebird.4 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'MasterClass')) THEN
		EXECUTE STATEMENT 'DROP TABLE "MasterClass"';
END

