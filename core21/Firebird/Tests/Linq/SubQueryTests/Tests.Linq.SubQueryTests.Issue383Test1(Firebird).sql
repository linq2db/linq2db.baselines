﻿BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Contract_Distributor_Agent')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Contract_Distributor_Agent"';
END

BeforeExecute
-- Firebird

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
-- Firebird

INSERT INTO "Contract_Distributor_Agent"
(
	"Agent_Id",
	"Distributor_Id",
	"Contract_Id",
	"Distributor_Type_Code",
	"Distributor_Agent_Type_Prefix",
	"Represents_Type_Prefix"
)
SELECT 1,1,198827882,'CC','OFFICE','REPRESENTS' FROM rdb$database

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Agent')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Agent"';
END

BeforeExecute
-- Firebird

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
-- Firebird

INSERT INTO "Agent"
(
	"Agent_Id",
	"First_Name",
	"Last_Name"
)
SELECT 1,'x','x' FROM rdb$database

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Distributor')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Distributor"';
END

BeforeExecute
-- Firebird

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
-- Firebird

INSERT INTO "Distributor"
(
	"Distributor_Id",
	"Type_Code",
	"Distributor_Name"
)
SELECT 1,'RE','x' FROM rdb$database

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Distributor_Commercial_Propert')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Distributor_Commercial_Propert"';
END

BeforeExecute
-- Firebird

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
-- Firebird

INSERT INTO "Distributor_Commercial_Propert"
(
	"Distributor_Id",
	"Commercial_Property_Id",
	"Distributor_Type_Code"
)
SELECT 1,1,'RE' FROM rdb$database

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Commercial_Property')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Commercial_Property"';
END

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Commercial_Property')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Commercial_Property"
			(
				"Commercial_Property_Id" Int                                    NOT NULL,
				"Street_Number"          VarChar(255) CHARACTER SET UNICODE_FSS,
				"Street_Name"            VarChar(255) CHARACTER SET UNICODE_FSS,
				"State"                  VarChar(255) CHARACTER SET UNICODE_FSS,
				"Zip_Code"               VarChar(255) CHARACTER SET UNICODE_FSS,
				"Zip_Plus_4"             VarChar(255) CHARACTER SET UNICODE_FSS,
				"City_Code"              VarChar(255) CHARACTER SET UNICODE_FSS
			)
		';
END

BeforeExecute
-- Firebird

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
SELECT 1,'x','x','x','x','x','x' FROM rdb$database

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Contract_Dates')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Contract_Dates"';
END

BeforeExecute
-- Firebird

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
-- Firebird

INSERT INTO "Contract_Dates"
(
	"Contract_Id",
	"Type_Code",
	"Effective_Date"
)
SELECT 198827882,'ESTCOE','x' FROM rdb$database

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Cities')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Cities"';
END

BeforeExecute
-- Firebird

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
-- Firebird

INSERT INTO "Cities"
(
	"City_Code",
	"City_Name"
)
SELECT 'x','Urupinsk' FROM rdb$database

BeforeExecute
BeginTransaction
BeforeExecute
-- Firebird

SELECT
	"key_data_result"."City_Code",
	"key_data_result"."Agent_Id",
	"key_data_result"."Distributor_Id",
	"key_data_result"."Contract_Id",
	"key_data_result"."Distributor_Type_Code",
	"key_data_result"."Distributor_Agent_Type_Prefix",
	"key_data_result"."Represents_Type_Prefix",
	"key_data_result"."Agent_Id_1",
	"key_data_result"."First_Name",
	"key_data_result"."Distributor_Id_1",
	"key_data_result"."Type_Code",
	"key_data_result"."Distributor_Name",
	"key_data_result"."Distributor_Id_2",
	"key_data_result"."Commercial_Property_Id",
	"key_data_result"."Distributor_Type_Code_1",
	"key_data_result"."Commercial_Property_Id_1",
	"key_data_result"."Street_Number",
	"key_data_result"."Street_Name",
	"key_data_result"."Zip_Code",
	"key_data_result"."Zip_Plus_4",
	"key_data_result"."Contract_Id_1",
	"key_data_result"."Type_Code_1",
	"key_data_result"."Effective_Date",
	"detail"."City_Name"
FROM
	(
		SELECT DISTINCT
			"cp"."City_Code",
			"cda"."Agent_Id",
			"cda"."Distributor_Id",
			"cda"."Contract_Id",
			"cda"."Distributor_Type_Code",
			"cda"."Distributor_Agent_Type_Prefix",
			"cda"."Represents_Type_Prefix",
			"a"."Agent_Id" as "Agent_Id_1",
			"a"."First_Name",
			"d"."Distributor_Id" as "Distributor_Id_1",
			"d"."Type_Code",
			"d"."Distributor_Name",
			"dcp"."Distributor_Id" as "Distributor_Id_2",
			"dcp"."Commercial_Property_Id",
			"dcp"."Distributor_Type_Code" as "Distributor_Type_Code_1",
			"cp"."Commercial_Property_Id" as "Commercial_Property_Id_1",
			"cp"."Street_Number",
			"cp"."Street_Name",
			"cp"."Zip_Code",
			"cp"."Zip_Plus_4",
			"cd"."Contract_Id" as "Contract_Id_1",
			"cd"."Type_Code" as "Type_Code_1",
			"cd"."Effective_Date"
		FROM
			"Contract_Distributor_Agent" "cda"
				INNER JOIN "Agent" "a" ON "cda"."Agent_Id" = "a"."Agent_Id"
				INNER JOIN "Distributor" "d" ON "cda"."Distributor_Id" = "d"."Distributor_Id"
				INNER JOIN "Distributor_Commercial_Propert" "dcp" ON "d"."Distributor_Id" = "dcp"."Distributor_Id"
				INNER JOIN "Commercial_Property" "cp" ON "dcp"."Commercial_Property_Id" = "cp"."Commercial_Property_Id"
				INNER JOIN "Contract_Dates" "cd" ON "cda"."Contract_Id" = "cd"."Contract_Id"
		WHERE
			"cda"."Contract_Id" = 198827882 AND
			"cda"."Distributor_Type_Code" = 'CC' AND
			"cda"."Distributor_Agent_Type_Prefix" = 'OFFICE' AND
			"cda"."Represents_Type_Prefix" = 'REPRESENTS' AND
			"cd"."Type_Code" = 'ESTCOE' AND
			"d"."Type_Code" = 'RE' AND
			"dcp"."Distributor_Type_Code" = 'RE'
	) "key_data_result"
		INNER JOIN "Cities" "detail" ON ("detail"."City_Code" = "key_data_result"."City_Code" OR "detail"."City_Code" IS NULL AND "key_data_result"."City_Code" IS NULL)

BeforeExecute
RollbackTransaction
BeforeExecute
-- Firebird

SELECT
	"a"."First_Name",
	"a"."Last_Name",
	"d"."Distributor_Name",
	"cp"."Street_Number",
	"cp"."Street_Name",
	"cp"."City_Code",
	"cda"."Agent_Id",
	"cda"."Distributor_Id",
	"cda"."Contract_Id",
	"cda"."Distributor_Type_Code",
	"cda"."Distributor_Agent_Type_Prefix",
	"cda"."Represents_Type_Prefix",
	"a"."Agent_Id",
	"d"."Distributor_Id",
	"d"."Type_Code",
	"dcp"."Distributor_Id",
	"dcp"."Commercial_Property_Id",
	"dcp"."Distributor_Type_Code",
	"cp"."Commercial_Property_Id",
	"cp"."State",
	"cp"."Zip_Code",
	"cp"."Zip_Plus_4",
	"cd"."Contract_Id",
	"cd"."Type_Code",
	"cd"."Effective_Date"
FROM
	"Contract_Distributor_Agent" "cda"
		INNER JOIN "Agent" "a" ON "cda"."Agent_Id" = "a"."Agent_Id"
		INNER JOIN "Distributor" "d" ON "cda"."Distributor_Id" = "d"."Distributor_Id"
		INNER JOIN "Distributor_Commercial_Propert" "dcp" ON "d"."Distributor_Id" = "dcp"."Distributor_Id"
		INNER JOIN "Commercial_Property" "cp" ON "dcp"."Commercial_Property_Id" = "cp"."Commercial_Property_Id"
		INNER JOIN "Contract_Dates" "cd" ON "cda"."Contract_Id" = "cd"."Contract_Id"
WHERE
	"cda"."Contract_Id" = 198827882 AND
	"cda"."Distributor_Type_Code" = 'CC' AND
	"cda"."Distributor_Agent_Type_Prefix" = 'OFFICE' AND
	"cda"."Represents_Type_Prefix" = 'REPRESENTS' AND
	"cd"."Type_Code" = 'ESTCOE' AND
	"d"."Type_Code" = 'RE' AND
	"dcp"."Distributor_Type_Code" = 'RE'

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Cities')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Cities"';
END

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Contract_Dates')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Contract_Dates"';
END

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Commercial_Property')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Commercial_Property"';
END

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Distributor_Commercial_Propert')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Distributor_Commercial_Propert"';
END

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Distributor')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Distributor"';
END

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Agent')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Agent"';
END

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Contract_Distributor_Agent')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Contract_Distributor_Agent"';
END

