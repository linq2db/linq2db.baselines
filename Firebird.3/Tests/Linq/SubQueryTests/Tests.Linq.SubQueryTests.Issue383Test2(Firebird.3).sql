BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Contract_Distributor_Agent')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Contract_Distributor_Agent"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Contract_Distributor_Agent')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Contract_Distributor_Agent"
			(
				"Agent_Id"                      Int                                    NOT NULL,
				"Distributor_Id"                Int                                    NOT NULL,
				"Contract_Id"                   Int                                    NOT NULL,
				"Distributor_Type_Code"         VarChar(255) CHARACTER SET UNICODE_FSS,
				"Distributor_Agent_Type_Prefix" VarChar(255) CHARACTER SET UNICODE_FSS,
				"Represents_Type_Prefix"        VarChar(255) CHARACTER SET UNICODE_FSS
			)
		';
END

BeforeExecute
-- Firebird.3 Firebird3

INSERT INTO "Contract_Distributor_Agent"
(
	"Agent_Id",
	"Distributor_Id",
	"Contract_Id",
	"Distributor_Type_Code",
	"Distributor_Agent_Type_Prefix",
	"Represents_Type_Prefix"
)
SELECT 1,1,198827882,CAST('CC' AS VarChar(255) CHARACTER SET UNICODE_FSS),CAST('OFFICE' AS VarChar(255) CHARACTER SET UNICODE_FSS),CAST('REPRESENTS' AS VarChar(255) CHARACTER SET UNICODE_FSS) FROM rdb$database

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Agent')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Agent"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Agent')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Agent"
			(
				"Agent_Id"   Int                                    NOT NULL,
				"First_Name" VarChar(255) CHARACTER SET UNICODE_FSS,
				"Last_Name"  VarChar(255) CHARACTER SET UNICODE_FSS
			)
		';
END

BeforeExecute
-- Firebird.3 Firebird3

INSERT INTO "Agent"
(
	"Agent_Id",
	"First_Name",
	"Last_Name"
)
SELECT 1,CAST('x' AS VarChar(255) CHARACTER SET UNICODE_FSS),CAST('x' AS VarChar(255) CHARACTER SET UNICODE_FSS) FROM rdb$database

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Distributor')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Distributor"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Distributor')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Distributor"
			(
				"Distributor_Id"   Int                                    NOT NULL,
				"Type_Code"        VarChar(255) CHARACTER SET UNICODE_FSS,
				"Distributor_Name" VarChar(255) CHARACTER SET UNICODE_FSS
			)
		';
END

BeforeExecute
-- Firebird.3 Firebird3

INSERT INTO "Distributor"
(
	"Distributor_Id",
	"Type_Code",
	"Distributor_Name"
)
SELECT 1,CAST('RE' AS VarChar(255) CHARACTER SET UNICODE_FSS),CAST('x' AS VarChar(255) CHARACTER SET UNICODE_FSS) FROM rdb$database

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Distributor_Commercial_Propert')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Distributor_Commercial_Propert"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Distributor_Commercial_Propert')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Distributor_Commercial_Propert"
			(
				"Distributor_Id"         Int                                    NOT NULL,
				"Commercial_Property_Id" Int                                    NOT NULL,
				"Distributor_Type_Code"  VarChar(255) CHARACTER SET UNICODE_FSS
			)
		';
END

BeforeExecute
-- Firebird.3 Firebird3

INSERT INTO "Distributor_Commercial_Propert"
(
	"Distributor_Id",
	"Commercial_Property_Id",
	"Distributor_Type_Code"
)
SELECT 1,1,CAST('RE' AS VarChar(255) CHARACTER SET UNICODE_FSS) FROM rdb$database

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Commercial_Property')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Commercial_Property"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Commercial_Property')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Commercial_Property"
			(
				"Commercial_Property_Id" Int                                    NOT NULL,
				"Street_Number"          VarChar(100) CHARACTER SET UNICODE_FSS,
				"Street_Name"            VarChar(100) CHARACTER SET UNICODE_FSS,
				"State"                  VarChar(100) CHARACTER SET UNICODE_FSS,
				"Zip_Code"               VarChar(100) CHARACTER SET UNICODE_FSS,
				"Zip_Plus_4"             VarChar(100) CHARACTER SET UNICODE_FSS,
				"City_Code"              VarChar(100) CHARACTER SET UNICODE_FSS
			)
		';
END

BeforeExecute
-- Firebird.3 Firebird3

INSERT INTO "Commercial_Property"
(
	"Commercial_Property_Id",
	"Street_Number",
	"Street_Name",
	"State",
	"Zip_Code",
	"Zip_Plus_4",
	"City_Code"
)
SELECT 1,CAST('x' AS VarChar(100) CHARACTER SET UNICODE_FSS),CAST('x' AS VarChar(100) CHARACTER SET UNICODE_FSS),CAST('x' AS VarChar(100) CHARACTER SET UNICODE_FSS),CAST('x' AS VarChar(100) CHARACTER SET UNICODE_FSS),CAST('x' AS VarChar(100) CHARACTER SET UNICODE_FSS),CAST('x' AS VarChar(100) CHARACTER SET UNICODE_FSS) FROM rdb$database

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Contract_Dates')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Contract_Dates"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Contract_Dates')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Contract_Dates"
			(
				"Contract_Id"    Int                                    NOT NULL,
				"Type_Code"      VarChar(255) CHARACTER SET UNICODE_FSS,
				"Effective_Date" VarChar(255) CHARACTER SET UNICODE_FSS
			)
		';
END

BeforeExecute
-- Firebird.3 Firebird3

INSERT INTO "Contract_Dates"
(
	"Contract_Id",
	"Type_Code",
	"Effective_Date"
)
SELECT 198827882,CAST('ESTCOE' AS VarChar(255) CHARACTER SET UNICODE_FSS),CAST('x' AS VarChar(255) CHARACTER SET UNICODE_FSS) FROM rdb$database

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Cities')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Cities"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Cities')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Cities"
			(
				"City_Code" VarChar(255) CHARACTER SET UNICODE_FSS,
				"City_Name" VarChar(255) CHARACTER SET UNICODE_FSS
			)
		';
END

BeforeExecute
-- Firebird.3 Firebird3

INSERT INTO "Cities"
(
	"City_Code",
	"City_Name"
)
SELECT CAST('x' AS VarChar(255) CHARACTER SET UNICODE_FSS),CAST('Urupinsk' AS VarChar(255) CHARACTER SET UNICODE_FSS) FROM rdb$database

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"a"."First_Name",
	"a"."Last_Name",
	"d"."Distributor_Name",
	"cp"."Street_Number",
	"cp"."Street_Name",
	"c_1"."City_Name",
	"cp"."State",
	"cp"."Zip_Code",
	"cp"."Zip_Plus_4",
	"cd"."Effective_Date"
FROM
	"Contract_Distributor_Agent" "cda"
		INNER JOIN "Agent" "a" ON "cda"."Agent_Id" = "a"."Agent_Id"
		INNER JOIN "Distributor" "d" ON "cda"."Distributor_Id" = "d"."Distributor_Id"
		INNER JOIN "Distributor_Commercial_Propert" "dcp" ON "d"."Distributor_Id" = "dcp"."Distributor_Id"
		INNER JOIN "Commercial_Property" "cp" ON "dcp"."Commercial_Property_Id" = "cp"."Commercial_Property_Id"
		INNER JOIN "Contract_Dates" "cd" ON "cda"."Contract_Id" = "cd"."Contract_Id"
		INNER JOIN "Cities" "c_1" ON "c_1"."City_Code" = "cp"."City_Code" AND "c_1"."City_Code" IS NOT NULL AND "cp"."City_Code" IS NOT NULL OR "c_1"."City_Code" IS NULL AND "cp"."City_Code" IS NULL
WHERE
	"cda"."Contract_Id" = 198827882 AND
	"cda"."Distributor_Type_Code" = 'CC' AND
	"cda"."Distributor_Type_Code" IS NOT NULL AND
	"cda"."Distributor_Agent_Type_Prefix" = 'OFFICE' AND
	"cda"."Distributor_Agent_Type_Prefix" IS NOT NULL AND
	"cda"."Represents_Type_Prefix" = 'REPRESENTS' AND
	"cda"."Represents_Type_Prefix" IS NOT NULL AND
	"cd"."Type_Code" = 'ESTCOE' AND
	"cd"."Type_Code" IS NOT NULL AND
	"d"."Type_Code" = 'RE' AND
	"d"."Type_Code" IS NOT NULL AND
	"dcp"."Distributor_Type_Code" = 'RE' AND
	"dcp"."Distributor_Type_Code" IS NOT NULL

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Cities')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Cities"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Contract_Dates')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Contract_Dates"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Commercial_Property')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Commercial_Property"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Distributor_Commercial_Propert')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Distributor_Commercial_Propert"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Distributor')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Distributor"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Agent')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Agent"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Contract_Distributor_Agent')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Contract_Distributor_Agent"';
END

