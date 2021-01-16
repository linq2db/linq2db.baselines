BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Contract_Distributor_Agent')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Contract_Distributor_Agent"';
END

BeforeExecute
-- Firebird3 Firebird

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
-- Firebird3 Firebird

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
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Agent')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Agent"';
END

BeforeExecute
-- Firebird3 Firebird

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
-- Firebird3 Firebird

INSERT INTO "Agent"
(
	"Agent_Id",
	"First_Name",
	"Last_Name"
)
SELECT 1,'x','x' FROM rdb$database

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Distributor')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Distributor"';
END

BeforeExecute
-- Firebird3 Firebird

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
-- Firebird3 Firebird

INSERT INTO "Distributor"
(
	"Distributor_Id",
	"Type_Code",
	"Distributor_Name"
)
SELECT 1,'RE','x' FROM rdb$database

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Distributor_Commercial_Propert')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Distributor_Commercial_Propert"';
END

BeforeExecute
-- Firebird3 Firebird

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
-- Firebird3 Firebird

INSERT INTO "Distributor_Commercial_Propert"
(
	"Distributor_Id",
	"Commercial_Property_Id",
	"Distributor_Type_Code"
)
SELECT 1,1,'RE' FROM rdb$database

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Commercial_Property')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Commercial_Property"';
END

BeforeExecute
-- Firebird3 Firebird

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
-- Firebird3 Firebird

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
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Contract_Dates')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Contract_Dates"';
END

BeforeExecute
-- Firebird3 Firebird

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
-- Firebird3 Firebird

INSERT INTO "Contract_Dates"
(
	"Contract_Id",
	"Type_Code",
	"Effective_Date"
)
SELECT 198827882,'ESTCOE','x' FROM rdb$database

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Cities')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Cities"';
END

BeforeExecute
-- Firebird3 Firebird

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
-- Firebird3 Firebird

INSERT INTO "Cities"
(
	"City_Code",
	"City_Name"
)
SELECT 'x','Urupinsk' FROM rdb$database

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Cities')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Cities"';
END

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Contract_Dates')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Contract_Dates"';
END

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Commercial_Property')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Commercial_Property"';
END

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Distributor_Commercial_Propert')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Distributor_Commercial_Propert"';
END

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Distributor')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Distributor"';
END

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Agent')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Agent"';
END

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Contract_Distributor_Agent')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Contract_Distributor_Agent"';
END

