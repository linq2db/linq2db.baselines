﻿BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Tdm100')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Tdm100"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Tdm100')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Tdm100"
			(
				"Id"          Int                                   NOT NULL,
				"CarSelf"     VarChar(10) CHARACTER SET UNICODE_FSS,
				"CarNo"       VarChar(10) CHARACTER SET UNICODE_FSS,
				"CarBrand"    VarChar(10) CHARACTER SET UNICODE_FSS,
				"RateWgt"     VarChar(10) CHARACTER SET UNICODE_FSS,
				"MastLeve"    VarChar(10) CHARACTER SET UNICODE_FSS,
				"ForkPole"    VarChar(10) CHARACTER SET UNICODE_FSS,
				"ForkPoleLen" VarChar(10) CHARACTER SET UNICODE_FSS
			)
		';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Trp004')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Trp004"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Trp004')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Trp004"
			(
				"Id"              Int                                   NOT NULL,
				"CarNo"           VarChar(10) CHARACTER SET UNICODE_FSS,
				"RuleNo"          VarChar(10) CHARACTER SET UNICODE_FSS,
				"LastWorkVal"     VarChar(10) CHARACTER SET UNICODE_FSS,
				"LastDate"        VarChar(10) CHARACTER SET UNICODE_FSS,
				"RealLastWorkVal" VarChar(10) CHARACTER SET UNICODE_FSS,
				"RealLastDate"    VarChar(10) CHARACTER SET UNICODE_FSS,
				"Status"          VarChar(10) CHARACTER SET UNICODE_FSS,
				"TelNo"           VarChar(10) CHARACTER SET UNICODE_FSS,
				"RecCreator"      VarChar(10) CHARACTER SET UNICODE_FSS,
				"RecCreateTime"   VarChar(10) CHARACTER SET UNICODE_FSS,
				"RecRevisor"      VarChar(10) CHARACTER SET UNICODE_FSS,
				"RecReviseTime"   VarChar(10) CHARACTER SET UNICODE_FSS
			)
		';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Trp003')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Trp003"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Trp003')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Trp003"
			(
				"Id"       Int                                   NOT NULL,
				"RuleNo"   VarChar(10) CHARACTER SET UNICODE_FSS,
				"RuleName" VarChar(10) CHARACTER SET UNICODE_FSS,
				"RuleType" VarChar(10) CHARACTER SET UNICODE_FSS,
				"RuleVal"  VarChar(10) CHARACTER SET UNICODE_FSS,
				"RuleUnit" VarChar(10) CHARACTER SET UNICODE_FSS,
				"Remark"   VarChar(10) CHARACTER SET UNICODE_FSS
			)
		';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Trp0041')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Trp0041"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Trp0041')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Trp0041"
			(
				"Id"       Int                                   NOT NULL,
				"CarNo"    VarChar(10) CHARACTER SET UNICODE_FSS,
				"FirstVal" VarChar(10) CHARACTER SET UNICODE_FSS
			)
		';
END

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @take Integer -- Int32
SET     @take = 10
DECLARE @skip Integer -- Int32
SET     @skip = 20
DECLARE @carNo VarChar(3) -- String
SET     @carNo = '%1%'
DECLARE @carBrand VarChar(6) -- String
SET     @carBrand = '%test%'

SELECT FIRST @take SKIP @skip
	"t_1"."Id",
	"t_1"."CarNo",
	"t_1"."CarSelf",
	"t_1"."CarBrand",
	"t_1"."RateWgt",
	"t_1"."MastLeve",
	"t_1"."ForkPole",
	"t_1"."FirstVal",
	"t_1"."TelNo",
	"t_1"."RuleNo",
	"t_1"."RuleName",
	"t_1"."RuleType",
	"t_1"."RuleVal",
	"t_1"."RuleUnit",
	"t_1"."RecCreator",
	"t_1"."RecCreateTime",
	"t_1"."RecRevisor",
	"t_1"."RecReviseTime"
FROM
	(
		SELECT
			"t2"."RuleNo",
			"t"."CarNo",
			"t"."CarBrand",
			"t"."Id",
			"t"."CarSelf",
			"t"."RateWgt",
			"t"."MastLeve",
			"t"."ForkPole",
			"t4"."FirstVal",
			"t2"."TelNo",
			"t3"."RuleName",
			"t3"."RuleType",
			"t3"."RuleVal",
			"t3"."RuleUnit",
			"t2"."RecCreator",
			"t2"."RecCreateTime",
			"t2"."RecRevisor",
			"t2"."RecReviseTime"
		FROM
			"Tdm100" "t"
				LEFT JOIN "Trp004" "t2" ON "t2"."CarNo" = "t"."CarNo" OR "t2"."CarNo" IS NULL AND "t"."CarNo" IS NULL
				LEFT JOIN "Trp003" "t3" ON "t3"."RuleNo" = "t2"."RuleNo" OR "t3"."RuleNo" IS NULL AND "t2"."RuleNo" IS NULL
				LEFT JOIN "Trp0041" "t4" ON "t4"."CarNo" = "t"."CarNo" OR "t4"."CarNo" IS NULL AND "t"."CarNo" IS NULL
	) "t_1"
WHERE
	"t_1"."RuleNo" IS NOT NULL AND "t_1"."CarNo" LIKE @carNo ESCAPE '~' AND
	"t_1"."CarBrand" LIKE @carBrand ESCAPE '~'

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @carNo VarChar(3) -- String
SET     @carNo = '%1%'
DECLARE @carBrand VarChar(6) -- String
SET     @carBrand = '%test%'

SELECT
	COUNT(*)
FROM
	(
		SELECT
			"t2"."RuleNo",
			"t"."CarNo",
			"t"."CarBrand"
		FROM
			"Tdm100" "t"
				LEFT JOIN "Trp004" "t2" ON "t2"."CarNo" = "t"."CarNo" OR "t2"."CarNo" IS NULL AND "t"."CarNo" IS NULL
				LEFT JOIN "Trp003" "t3" ON "t3"."RuleNo" = "t2"."RuleNo" OR "t3"."RuleNo" IS NULL AND "t2"."RuleNo" IS NULL
				LEFT JOIN "Trp0041" "t4" ON "t4"."CarNo" = "t"."CarNo" OR "t4"."CarNo" IS NULL AND "t"."CarNo" IS NULL
	) "t1"
WHERE
	"t1"."RuleNo" IS NOT NULL AND "t1"."CarNo" LIKE @carNo ESCAPE '~' AND
	"t1"."CarBrand" LIKE @carBrand ESCAPE '~'

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Trp0041')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Trp0041"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Trp003')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Trp003"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Trp004')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Trp004"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Tdm100')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Tdm100"';
END

