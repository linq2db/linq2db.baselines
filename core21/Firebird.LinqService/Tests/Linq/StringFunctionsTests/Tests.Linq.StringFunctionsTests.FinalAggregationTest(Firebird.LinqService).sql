﻿BeforeExecute
-- Firebird

CREATE TABLE "SampleClass"
(
	"Id"     Int                                   NOT NULL,
	"Value1" VarChar(50) CHARACTER SET UNICODE_FSS,
	"Value2" VarChar(50) CHARACTER SET UNICODE_FSS,
	"Value3" VarChar(50) CHARACTER SET UNICODE_FSS,
	"Value4" VarChar(50)
)

BeforeExecute
-- Firebird

INSERT INTO "SampleClass"
(
	"Id",
	"Value1",
	"Value2",
	"Value3",
	"Value4"
)
SELECT 1,'V1','V2',NULL,'V4' FROM rdb$database UNION ALL
SELECT 2,NULL,'Z2',NULL,NULL FROM rdb$database UNION ALL
SELECT 3,'Z1',NULL,NULL,'Z4' FROM rdb$database

BeforeExecute
-- Firebird

SELECT
	LIST("t"."Value1", ' -> ')
FROM
	"SampleClass" "t"

BeforeExecute
-- Firebird

DROP TABLE "SampleClass"

