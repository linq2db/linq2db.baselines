﻿BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'MasterClass')) THEN
		EXECUTE STATEMENT 'DROP TABLE "MasterClass"';
END

BeforeExecute
-- Firebird.2.5 Firebird

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
-- Firebird.2.5 Firebird

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
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'DetailClass')) THEN
		EXECUTE STATEMENT 'DROP TABLE "DetailClass"';
END

BeforeExecute
-- Firebird.2.5 Firebird

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
-- Firebird.2.5 Firebird

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
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'DetailClass')) THEN
		EXECUTE STATEMENT 'DROP TABLE "DetailClass"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'MasterClass')) THEN
		EXECUTE STATEMENT 'DROP TABLE "MasterClass"';
END

